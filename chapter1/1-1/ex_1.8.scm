;; Exercise 1.8
;; Newton's method for cube roots is based on the fact that if y is an approximation to the cube root of x,
;; then a better approximation is given by the value

;; (x/y**2 + 2y)/3

;; Use this formula to implement a cube-root procedure analogous to the square-root procedure

(define (cube-root x guess)
  (if (good-enough? guess x)
      guess
      (cube-root x (improve-guess x guess))))

(define (improve-guess x guess)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

(define (good-enough? guess x)
  (and
    (display (delta-abs (cube guess) x))
    (newline)
    (newline)
    (< (delta-abs (cube guess) x) 0.01)))

(define (delta-abs x y)
  (abs (- x y)))

(define (cube x) (* x x x))

