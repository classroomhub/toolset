#include<iostream>
#include "diff.h"
#include<table.h>
#include<vector>

using namespace std;
using namespace Toolset;

int main(int argc, char* argv[]) {
    cout << "Sample test program for project diff\n";
    if (argc < 3) {
        cerr << "Usage:\n";
        cerr << argv[0] << " file1 file2\n";
        return 1;
    }

    Diff A(argv[1], argv[2]);
    A.generateDiff();
    vector<pair<int, string>> diff = A.getDiff();

    for (pair<int,string> d : diff) {
        cout << d.first << ":" << d.second << endl;
    }

    return 0;
}