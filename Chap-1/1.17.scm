#lang sicp
(define (double x) (* x 2))
(define (halve x) (/ x 2))
(define (even? x) (= (remainder x 2) 0))
(define (fast-mult a n)
  (cond ((= n 0) 0)
        ((even? n) (fast-mult (double a) (halve n)))
        (else (+ a (fast-mult a (- n 1))))))
(fast-mult 6 10)
