#lang sicp
(define (square x) (* x x))

(define (average a b)
  (/ (+ a b) 2))

(define (abs a)
  (if (< a 0)
      (- a)
      a))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.01))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 99)