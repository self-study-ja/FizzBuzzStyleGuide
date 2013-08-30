(use '[clojure.string :only (join)])

(def fizz '("Fizz"))

(def buzz '("Buzz"))

(defn get-fizz
  [x]
  (first (drop x fizz)))

(defn get-buzz
  [x]
  (first (drop x buzz)))

(defn get-fizzbuzz
  [x]
  (filter string? 
    (cons 
      (get-fizz (rem x 3)) 
      (list (get-buzz (rem x 5))))))

(defn fizzbuzz?
  [x]
  (if (empty? (get-fizzbuzz x))
    (println x)
    (println (join "" (get-fizzbuzz x)))))

(dorun
  (map fizzbuzz? (range 1 101)))
