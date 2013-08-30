(ns basic.core)

(defn basic-fizzbuzz
  [x]
  (cond 
    (zero? (rem x 15)) "FizzBuzz"
    (zero? (rem x 3)) "Fizz"
    (zero? (rem x 5)) "Buzz"
    :else x))

(defn do-fizzbuzz
 [x]
 (if (= x 101)
   (do 
     (println ""))
   (do
    (println (basic-fizzbuzz x))
    (recur (inc x)))))


(defn -main []
  (do-fizzbuzz 0))
