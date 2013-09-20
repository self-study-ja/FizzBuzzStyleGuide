// vim: set ai noet sts=4 sw=4 ts=4 ft=go :
package main

import "fmt"

func FizzBuzz(n int) {
	var f string = "Fizz";
	var b string = "Buzz";

	if n == 0 {
		return
	}

	FizzBuzz(n - 1)

	if n % 15 == 0 {
		fmt.Println(f + b)
	} else if n % 5 == 0 {
		fmt.Println(b)
	} else if n % 3 == 0 {
		fmt.Println(f)
	} else {
		fmt.Println(n)
	}
}


func main() {
	FizzBuzz(100)
}

