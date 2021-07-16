#lang sicp
;;  Exercise 1.6.
;; Alyssa P. Hacker doesn't see why if needs to be provided as a special form.
;; ``Why can't I just define it as an ordinary procedure in terms of cond?'' she asks.
;; Alyssa's friend Eva Lu Ator claims this can indeed be done, and she defines a new version of if:

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

;; Eva demonstrates the program for Alyssa:

(new-if (= 2 3) 0 5)
5

(new-if (= 1 1) 0 5)
0

;; Delighted, Alyssa uses new-if to rewrite the square-root program:

(define (good-enough? guess x)
  (< (abs (- (* guess guess) x)) 0.001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))

;; What happens when Alyssa attempts to use this to compute square roots? Explain.

;; Answer
;;
;; Because new-if is an ordinary procedure then to evaluate that procedure interpreter first needs to
;; evaluate the subexpressions of the combination.
;; Because of that sqrt-iter gonna stuck in infinite loop in new-if check
;; because new-if first tries to evaluate the subexpressions of the combination he will always will run sqrt-iter
;; in new-if procedure