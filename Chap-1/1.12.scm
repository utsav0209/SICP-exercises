#lang sicp
(define (pascal r c)
  (cond ((= c 1) 1)
        ((= r c) 1)
        (else (+ (pascal (- r 1) (- c 1)) (pascal (- r 1) c)))))

;testing
(pascal 5 3)