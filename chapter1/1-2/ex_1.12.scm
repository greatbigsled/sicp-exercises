;; Exercise 1.12.  The following pattern of numbers is called Pascal's triangle.
;;
;;  1                 0
;;  1 1               1
;;  1 2 1             2
;;  1 3 3 1           3
;;  1 4 6 4 1         4
;;  1 5 10 10 5 1     5
;;
;; The numbers at the edge of the triangle are all 1,
;; and each number inside the triangle is the sum of the two numbers above it.
;; Write a procedure that computes elements of Pascal's triangle by means of a recursive process.

;; Solution
(define (pasc row col)
  (cond ((> col row) #f) ;; false, not possible
        ((= col 0) 1) ;; first row
        ((or (= col row) (= col 0)) 1) ;; first or last col
        (else
          (+ (pasc (- row 1) (- col 1)) (pasc (- row 1) col)))
  ))


;; Display full row
(define (display-pascal-row row)
  (define (display-col-iter i)
    (display (pasc row i)) (display " ")
    (if (= row i)
        (newline)
        (display-col-iter (+ i 1))))
  (display-col-iter 0))

;; Display full triangle till row
(define (display-pascal-triangle row)
  (define (display-row-iter r)
    (display-pascal-row r)
    (if (= r row)
        (newline)
        (display-row-iter (+ 1 r))))
  (display-row-iter 0))

