#include <iostream>

template <int N, int FIZZ, int BUZZ>
struct Outputer{
	static void Output(){
		std::cout << N << std::endl;
	}
};

template <int N>
struct Outputer<N, 0, 0>{
	static void Output(){
		std::cout << "FizzBuzz" << std::endl;
	}
};

template <int N, int BUZZ>
struct Outputer<N, 0, BUZZ>{
	static void Output(){
		std::cout << "Fizz" << std::endl;
	}
};

template <int N, int FIZZ>
struct Outputer<N, FIZZ, 0>{
	static void Output(){
		std::cout << "Buzz" << std::endl;
	}
};

template <int N>
struct For{
	static void Do() {
		Outputer<N, N % 3, N % 5>::Output();
		For<N + 1>::Do();
	}
};

template <>
struct For<101>{
	static void Do() {
	}
};

int main()
{
	For<1>::Do();
	return 0;
}

