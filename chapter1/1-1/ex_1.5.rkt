#lang sicp
;; Exercise 1.5.
;; Ben Bitdiddle has invented a test to determine whether the interpreter he is faced with is using
;; applicative-order evaluation or normal-order evaluation. He defines the following two procedures:

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

;; Then he evaluates the expression

(test 0 (p))

;; What behavior will Ben observe with an interpreter that uses applicative-order evaluation?
;; What behavior will he observe with an interpreter that uses normal-order evaluation?
;; Explain your answer
;; (Assume that the evaluation rule for the special form if is the same whether
;; the interpreter is using normal or applicative order:
;; The predicate expression is evaluated first, and the result determines whether to evaluate the consequent
;; or the alternative expression.)

;; In case of applicative-order evaluation procedure gonna stuck in infinite recursive loop
;; because interpreter will try to evaluate value of (p) — which in infinite recursive loop

;; In case of normal-order evaluation interpreter first will try to `fully expand and then reduce` — and because of that
;; it will check predicate value first and because of that the infinite recursive loop (p) will not gonna be called