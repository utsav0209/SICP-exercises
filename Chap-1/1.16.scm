#lang sicp
(define (square x) (* x x))
(define (even? x) (= (remainder x 2) 0))
(define (fast-exp b n)
  (fast-exp-itr 1 b n))
(define (fast-exp-itr a b n)
  (cond ((= n 1) a)
        ((even? n) (fast-exp-itr (* a (square b)) b (/ n 2)))
        (else (fast-exp-itr (* a b (square b)) b (/ (- n 1) 2)))))
(fast-exp 3 4)