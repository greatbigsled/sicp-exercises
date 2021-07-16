#lang sicp
;;  Exercise 1.4.
;; Observe that our model of evaluation allows for combinations whose operators are compound expressions.
;; Use this observation to describe the behavior of the following procedure:

 (define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

;; In this case operator was not written beforhand but use of one of two operators(+ or -)
;; was computed based on value of b and then appropriate operator was used