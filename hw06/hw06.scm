;;;;;;;;;;;;;;;
;; Questions ;;
;;;;;;;;;;;;;;;

; Scheme

(define (cddr s)
  (cdr (cdr s)))

(define (cadr s)
  (car (cdr s))
)

(define (caddr s)
  (car (cddr s))
)

(define (sign x)
  (cond ((> x 0) 1)
  		((= x 0) 0)
  		(else -1))
)

(define (square x) (* x x))

(define (pow b n)
  (cond ((= n 0) 1)
  		((= (remainder n 2) 0) (square (pow b (/ n 2))))
  		((= (remainder n 2) 1) (* b (pow b (- n 1))))
  	)
)

(define (unique s)
  (cond ((null? s) s)
  		()
)