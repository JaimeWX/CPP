# G++
> preprocessing   
> compilation  
> assembly  
> linking  

## preprocessing
预处理指的就是   

    `#include <iostream>`    
    `using namespace std;` 
### 预处理命令
    g++ -E test_gcc.cpp  
    g++ -E test_gcc.cpp > test.ii

## compilation
### 编译命令

    g++ -S test.ii

## assembly
### 汇编命令

    g++ -c test.s

## linking 
### 链接命令

    g++ test.o -o test
    