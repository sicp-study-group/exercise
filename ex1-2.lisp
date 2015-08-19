; 1.9
 4 5)

(define (+ a b)
  (if (= a 0) 
      b 
      (inc (+ (dec a) b))))

;(inc (+ 3 5))
;(inc (inc (+ 2 5)))
;(inc (inc (inc (+ 1 5))))
;(inc (inc (inc (inc (inc 5)))))
;recursive

(define (+ a b)
	(if (= 0 a)
			b
			(+ (dec a) (inc b))))

;(+ 3 6)
;(+ 2 7)
;(+ 1 8)
;(+ 0 9)
;iterative

; 1.10

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

(A 1 10)

;(A 0 (A 1 9))
;(A 0 (A (0 (A 1 8))))



(A 1 2)
; (A 0 (A 1 1))
; (A 0 2)
; 4

(A 1 3)
; (A 0 (A 1 2))
; (A 0 (A 0 (A 1 1)))
; (A 0 (A 0 2))
; (A 0 4)
; 8

(A 2 4)
; (A 1 (A 2 3))
; (A 1 (A 1 (A 2 2)))
; (A 1 (A 1 (A 1 (A 2 1))))
; (A 1 (A 1 (A 1 2)))
; (A 1 (A 1 (A 0 (A 1 1))))
; (A 1 (A 1 (A 0 2)))
; (A 1 (A 1 4))
; (A 1 (A 0 (A 1 3)))
; (A 1 (A 0 (A 0 (A 1 2))))
; (A 1 (A 0 (A 0 (A 0 (A 1 1)))))
; (A 1 (A 0 (A 0 (A 0 2))))
; (A 1 (A 0 (A 0 4)))
; (A 1 (A 0 8))
; (A 1 16)
; 2^16
; (A 1 2^4)
; 2^(2^(n-1))



(A 2 3)
; (A 1 (A 2 2))
; (A 1 (A 1 (A 2 1)))
; (A 1 (A 1 2))
; (A 1 (A 0 (A 1 1)))
; (A 1 (A 0 2))
; (A 1 4)
; 2^4

(A 2 2)
; (A 1 (A 2 1))
; (A 1 2)
; 2^2

; (A 2 5)
; (A 1 (A 2 4))
; (A 1 2^16)
; 2^(2^16)

(define (f n)
	(A 0 n))


(define (fib n)
	(cond ((= 0 n) 0)
				((= 1 n) 1)
				else (+ (fib (- n 1))
								(fib (- n 2)))))

(define (fib n)
	(fib-iter 1 0 n))

(define (fib-iter a b count)
	(if (= count 0)
			b
			(fib-iter ((+ a b) a (- count 1)))))


; change coin
(define (change-coin amount)
	(cc amount 5))
; there are 5 kinds of coins

(defie (cc amount kinds-of-coins)
	(cond ((= amount 0) 1)
				((or (< amount 0)
						 (< kinds-of-coins 0))
					0)
				(else
					)))

; 