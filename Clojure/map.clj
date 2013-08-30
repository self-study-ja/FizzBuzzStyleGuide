(use '[clojure.string :only (join)])

(def fizz-list 
  (cycle '(false false "Fizz")))

(def buzz-list 
  (cycle '(false false false false "Buzz")))

(def use-fizzlist
  (take 101 fizz-list))

(def use-buzzlist
  (take 101 buzz-list))

(def fizzbuzz-list
  (map list use-fizzlist use-buzzlist))

(def fizzbuzz_or_num
  (map list fizzbuzz-list (range 1 101)))

(defn false-filter
  [x]
  (filter string? x))

(defn do-fizzbuzz
  [x]
  (if 
    (empty? (false-filter (first x)))
    (println (first (rest x)))
    (println (join (false-filter (first x))))))

(dorun (map do-fizzbuzz fizzbuzz_or_num))
