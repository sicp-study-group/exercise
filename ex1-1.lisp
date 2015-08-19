; 1.3
(define (sqr x)
	(* x x))

(define (sum-of-sqr x y)
	(+ (sqr x) (sqr y)))

(define (sum-of-sqr-two-bigger-val a b c)
	(cond (and (<= c a) (<= c b)) (sum-of-sqr a b)
				(and (<= b a) (<= b c)) (sum-of-sqr a c)
				(and (<= a b) (<= a c)) (sum-of-sqr b c)))

; 1.4
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
; if b > 0 then (+ a b)
; if b <= 0 then (- a b)

; 1.5
(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

;(test 0 (p))

;applicative-order
;normal-order

;sqrt
(define (sqrt-iter guess x)
	(if (good-enoough? guess x)
		guess
		(sqrt-iter (improve guess x)
			x)))

(define (improve guess x)
	(average guess (/ x guess)))

(define (average a b)
	(/ (+ x y) 2))

(define (abs x)
	(if (< x 0) -x)
		x)

(define (good-enoough? guess x)
	(< (abs (- (sqr guess) x)) 0.001))

; 1.6
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))



(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))


(define (sqrt x)
	(define (good-enough? guess)
		(< (abs (- (sqr guess) x)) 0.001))
	(define (improve guess)
		(average guess (/ x guess)))
	(define (sqrt-iter guess)
	  (if (good-enough? guess)
	  		guess
	  		(sqrt-iter (improve guess))))
(sqrt-iter 1.0))