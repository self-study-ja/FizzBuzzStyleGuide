(use '[clojure.string :only (join)])

(defn fizz
  [x]
  (if (zero? x) '("Fizz")
    (cons false 
        (list (fizz (dec x))))))

(defn buzz
  [x]
  (if (zero? x) '("Buzz")
    (cons false (list (buzz (dec x))))))

(defn fizzbuzz?
  [x]
  (filter string? (cons 
    (first (fizz (rem x 3)))
    (list (first (buzz (rem x 5)))))))

(defn fizzbuzz
  [x]
  (if (empty? (fizzbuzz? x))
    (println x)
    (println (join "" (fizzbuzz? x)))))

(dorun
  (map fizzbuzz (range 1 101)))
