#lang sicp
;;  Exercise 1.11.  A function f is defined by the rule that
;; f(n) = n if n<3 and f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3) if n> 3.
;; Write a procedure that computes f by means of a recursive process.
;; Write a procedure that computes f by means of an iterative process.


;; recursive
(define (f-rec n)
  (if (< n 3)
        n
        (+ (f-rec (- n 1)) (* 2 (f-rec (- n 2))) (* 3 (f-rec (- n 3))))))


;; iterative
(define (f n)
  (f-iter n 3 2 1 0))

(define (f-iter n cur prev prev2 prev3)
  (cond ((< n 3) n)
        ((= cur n) (+ prev (* 2 prev2) (* 3 prev3)))
        (else (f-iter n (+ 1 cur) (+ prev (* 2 prev2) (* 3 prev3)) prev prev2)))
  )