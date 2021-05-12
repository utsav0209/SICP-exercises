#lang sicp
(define (square x) (* x x))
(define (sum-of-squares a b)
  (+ (square a) (square b)))

;using if statements
(define (get-sum-of-sqares-of-two-largest a b c)
  (if (> a b)
      (if (> b c)
          (sum-of-squares a b)
          (sum-of-squares a c))
      (if (> a c)
          (sum-of-squares b a)
          (sum-of-squares b c))
      ))
(get-sum-of-sqares-of-two-largest 1 2 3)

;using conditions
(define (get-sum-of-sqares-of-two-largest-another a b c)
  (cond ((> a b)
         (cond ((> b c) (sum-of-squares a b))
                (else (sum-of-squares a c))))
        (else
         (cond ((> a c) (sum-of-squares b a))
               (else (sum-of-squares b c))))))

(get-sum-of-sqares-of-two-largest-another 1 2 3)