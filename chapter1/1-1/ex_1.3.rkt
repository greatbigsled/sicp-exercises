#lang sicp
;;  Exercise 1.3.  Define a procedure that takes three numbers as arguments and returns the sum
;; of the squares of the two larger numbers

(define (sum-2-larger-squares x y z)
  (if (> x y)
      (+ (square x) (square (if (> y z) y z)))
      (+ (square y) (square (if (> x z) x z))))
  )

(define (square n) (* n n))

(sum-2-larger-squares 23 12 42)