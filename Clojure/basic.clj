(defn fizzbuzz
  [x]
  (cond
    (zero? (rem x 15)) "FizzBuzz"
    (zero? (rem x 3)) "Fizz"
    (zero? (rem x 5)) "Buzz"
    :else x))

(defn do-loop
  [x]
  (if (= x 101)
    (do (println ""))
    (do (println (fizzbuzz x))
      (recur (inc x)))))

(do-loop 1)
