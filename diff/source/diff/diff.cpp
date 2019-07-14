#include "diff.h"
#include "sha256.h"

#include<iostream>
#include<vector>
#include<fstream>

using namespace std;
using namespace Toolset;

Diff::Diff(const string file1,const string file2) {
    ifstream input(file1.c_str(), ios::in);
    SHA256 sha256;

    string line;
    while (getline(input, line)){
        this->file1.push_back(line);
        this->hash1.push_back(sha256(line));
    }

    input.close();
    input.open(file2.c_str(), ios::in);

    while (getline(input, line)) {
        this->file2.push_back(line);
        this->hash2.push_back(sha256(line));
    }

    input.close();
}

void Diff::generateDiff() {
    int maxR = hash2.size();
    int maxC = hash1.size();

    for (int i = 0; i <= maxR; i++)
    for (int j = 0; j <= maxC; j++) {
        vector<string*> node; //node to be stored at i, j

        if (i && j) {
            //LCS logic
            string &x = hash1.at(j-1);
            string &y = hash2.at(i-1);

            if (x.compare(y) == 0) {
                vector<string*> r = LCS.get(i-1, j-1);
                node.insert(node.begin(), r.begin(), r.end()); // copy previous contents
                node.push_back(&(hash1.at(j-1)));
            }
            else {
                if (LCS.get(i-1, j).size() > LCS.get(i, j-1).size()) {
                    node.insert(node.begin(), LCS.get(i-1,j).begin(), LCS.get(i-1, j).end());
                }
                else {
                    node.insert(node.begin(), LCS.get(i,j-1).begin(), LCS.get(i, j-1).end());
                }
            }
        }

        LCS.set(i, j, node);
    }
}

vector<pair<int, string>> Diff::getDiff() {
    vector<pair<int, string>> diff;

    int r = file2.size();
    int c = file1.size();

    vector<string*> lcs = LCS.get(r,c);
    int s = lcs.size();

    cout << "LCS:\n";
    for (string*p : lcs) {
        cout << *p << endl;
    }

    int file1_i = 0, file2_i = 0, lcs_i = 0;
    while (file1_i < c && file2_i < r && lcs_i < s) {
        string x, y, z;
        x = hash1.at(file1_i);
        y = hash2.at(file2_i);
        z = *(lcs.at(lcs_i));

        if (x.compare(z) == 0 && y.compare(z) != 0) {
            //new line
            diff.push_back(pair<int, string>(1, file2.at(file2_i)));
            file2_i ++;
        }
        else if (x.compare(z) == 0 && y.compare(z) == 0) {
            //line retained
            diff.push_back(pair<int, string>(0, file2.at(file2_i)));
            file2_i ++;
            file1_i ++;
            lcs_i ++;
        }
        else {
            //line deleted
            diff.push_back(pair<int, string>(-1, file1.at(file1_i)));
            file1_i ++;
        }
    }

    while (file1_i < c) {
        //line deleted
        diff.push_back(pair<int, string>(-1, file1.at(file1_i)));
        file1_i ++;
    }

    while (file2_i < r) {
        //new line
        diff.push_back(pair<int, string>(1, file2.at(file2_i)));
        file2_i ++;
    }

    return diff;
}