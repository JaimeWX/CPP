#include <iostream>
#include "xthread.h"
#include "xcom.h"
using namespace std;

class XTask:public XThread
{
public:
	void Main() override
	{
		cout << "XTask main" << endl;
	}
};

int main(int argc, char *argv[])
{
	cout << "XServer" << endl;
	XCom com;
	XTask task;
	task.Start();
	task.Wait();
	return 0;
}
