(ns one-two)

(def foo 42)

(defn factorial [n]
      (if (= n 1)
        1
        (* n (factorial (- n 1)))))

(defn fib [n]
      (cond (= n 0) 0
            (= n 1) 1
            :else (+ (fib (- n 1))
                     (fib (- n 2)))))

;;exercise 1.12, fairly self-explanatory
(defn func-f [n]
      (if (< n 3)
        n
        (+ (func-f (- n 1))
           (* 2 (func-f (- n 2)))
           (* 3 (func-f (- n 3))))))

;; exercise 1.12 -- pascal's triangle
;;may not be elegant, but it does the job
(defn pascal [row col]
      (cond (and (= row 2) (or (= col 0) (= col 2))) 1
            (and (= row 2) (= col 1)) 2
            (= row 0) 1
            (= row 1) 1
            (= col 0) 1
            (= col row) 1
            (= col (- row 1)) (+ (pascal (- row 1) (- col 1))
                                 1)
            :else (+ (pascal (- row 1) (- col 1))
                     (pascal (- row 1) col))))

;;exercise 1.12 ???

