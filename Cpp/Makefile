all:
	@gcc normal.cpp -lstdc++ -o normal.run.out
	@gcc multi.cpp -lstdc++ -lboost_thread-mt -o multi.run.out
	@gcc operator.cpp -lstdc++ -o operator.run.out
	@gcc template.cpp -lstdc++ -o template.run.out
	@./normal.run.out > normal.out
	@./multi.run.out > multi.out
	@./operator.run.out > operator.out
	@./template.run.out > template.out

test:
	diff ../answer.txt normal.out
	diff ../answer.txt multi.out
	diff ../answer.txt operator.out
	diff ../answer.txt template.out

clean:
	rm -f *.out
