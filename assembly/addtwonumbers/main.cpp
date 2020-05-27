#include <iostream>

using namespace std;

extern "C" int AddInts(int a, int b, int c, int d);
extern "C" int MulBy17(int a);
extern "C" int Sub5x(int a, int b);

int main() {
int a, b, c, d;
cout<<"Enter a number: ";
cin>>a;
cout<<"Enter a number: ";
cin>>b;
cout<<"Enter a number: ";
cin>>c;
cout<<"Enter a number: ";
cin>>d;

cout<<"ASM said AddInts is: "<<AddInts(a, b, c, d)<<endl;
cout<<"ASM said MulBy17 is: "<<MulBy17(a)<<endl;
cout<<"ASM said Sub5x is: "<<Sub5x(a, b)<<endl;



return 0;
}
