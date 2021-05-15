#lang sicp
(define (square x) (* x x))

(define (average a b)
  (/ (+ a b) 2))

(define (abs a)
  (if (< a 0)
      (- a)
      a))

(define (good-enough? previous-guess guess)
  (< (abs (/ (- guess previous-guess) guess)) 0.00000000001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (if (good-enough? guess (improve guess x))
      guess
      (sqrt-iter (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 0.000000000123123)
(sqrt 123456789012345)