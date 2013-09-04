#include <string>
#include <iostream>
#include <stdio.h>

class Buzz{
public:
	Buzz(int n){ if(n % 5 == 0)m_str = "Buzz"; }
	std::string m_str;
};

class Fizz{
public:
	Fizz(int n){ if(n % 3 == 0)m_str = "Fizz"; }
	Fizz operator + (const Buzz& rhs) const
	{
		Fizz ret = *this;
		ret.m_str += rhs.m_str;
		return ret;
	}
	std::string operator + (int n) const
	{
		if(m_str.length() == 0){
			char buf[32];
			sprintf(buf, "%d", n);
			return buf;
		}
		else{
			return m_str;
		}
	}
private:
	std::string m_str;
};

int main()
{
	for(int i = 1; i <= 100; i++){
		std::cout << Fizz(i) + Buzz(i) + i << std::endl;
	}
}
