# toolset
tools required across the different project modules

## Installation

### Cloning the repo
```sh
git clone https://github.com/classroomhub/toolset
```

### Dependency for building
1. cmake
2. c++ compiler

### Installing Table (* dependency for other toolsets)
Table class is a helper class used in other tools like Diff class

```sh
cd table
cd bin
cmake ../source
sudo make & make install
```

### Installing Diff
#### Dependencies
1. [Table class](#Installing\ Table)