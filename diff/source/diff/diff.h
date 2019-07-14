#ifndef DIFF_H
#define DIFF_H

#include<vector>
#include<fstream>
#include<table.h>

namespace Toolset {
    class Diff {
        private:
        std::vector<std::string>file1;
        std::vector<std::string>file2;
        std::vector<std::string>hash1;
        std::vector<std::string>hash2;

        Table<std::vector<std::string*>> LCS;

        public:
        Diff(const std::string file1,const std::string file2);
        void generateDiff();
        std::vector<std::pair<int, std::string>> getDiff();
    };
}

#endif