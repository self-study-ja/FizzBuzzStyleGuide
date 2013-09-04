#include <boost/thread.hpp>
#include <algorithm>
#include <stdio.h>

char g_results[101][32];

void threadfunc(int from, int to)
{
	for(int i = from; i <= to; i++){
		(i % 3) || strcat(g_results[i], "Fizz");
		(i % 5) || strcat(g_results[i], "Buzz");
		strlen(g_results[i]) || sprintf(g_results[i], "%d", i);
	}
}

int main()
{
	// Setting of threading
	const int THREAD_COUNT = 4;

	// Create threads
	boost::thread* threads[THREAD_COUNT];
	int step = 100 / THREAD_COUNT + 1;
	int start = 1;
	for(int i = 0; i < THREAD_COUNT; i++){
		threads[i] = new boost::thread(
			boost::bind(
				threadfunc,
				start,
				std::min(100, start + step - 1)
			)
		);
		start += step;
	}

	// Wait until finished all
	for(int i = 0; i < THREAD_COUNT; i++){
		threads[i]->join();
	}

	// Output results
	for(int i = 1; i <= 100; i++){
		printf("%s\n", g_results[i]);
	}
	return 0;
}
