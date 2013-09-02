all:
	@ruby class_base.rb > class_base.out
	@ruby exception.rb > exception.out
	@ruby lambda.rb > lambda.out
test:
	diff ../answer.txt class_base.out
	diff ../answer.txt exception.out
	diff ../answer.txt lambda.out

