#include <iostream>

int main()
{
	for(int i = 1; i <= 100; i++){
		int n = 0;
		if(i % 3 == 0)std::cout << "Fizz", n = 1;
		if(i % 5 == 0)std::cout << "Buzz", n = 1;
		n || std::cout << i;
		std::cout << std::endl;
	}
	return 0;
}
