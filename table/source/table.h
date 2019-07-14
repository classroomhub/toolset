#ifndef TABLE_H
#define TABLE_H

#include<map>

namespace Toolset {
    template <class TableValue>
    class Table {
        private:

        std::map<std::pair<int,int>, TableValue> table;

        public:
        void set(int r, int c, TableValue v) {
            table[std::pair<int, int>(r, c)] = v;
        }

        TableValue& get(int r, int c) {
            return table[std::pair<int, int>(r, c)];
        }
    };
}

#endif