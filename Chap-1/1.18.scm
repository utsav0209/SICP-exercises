#lang sicp
(define (double x) (* x 2))
(define (halve x) (/ x 2))
(define (even? x) (= (remainder x 2) 0))
(define (fast-mult x y)
  (fast-mult-iter 0 x y))
(define (fast-mult-iter acc a b)
  (cond ((= b 0) acc)
        ((even? b) (fast-mult-iter acc (double a) (halve b)))
        (else (fast-mult-iter (+ acc a) a (- b 1)))))
(fast-mult 6 10)
