#include <vector>
#include <iostream>
using namespace std;


int main()
{   
    // 初始化一个3行4列值全为0的矩阵
    vector<vector<int>> matrix(3,vector<int>(4,0));

    vector<vector<int>>::iterator it1;
    vector<int>::iterator it2;
    for(it1=matrix.begin(); it1 != matrix.end(); ++it1)
    {
        for(it2 = (*it1).begin(); it2 != (*it1).end(); ++it2)
        {
            cout << *it2 << " ";
        }
        cout << endl;
    }
    return 0;
}
