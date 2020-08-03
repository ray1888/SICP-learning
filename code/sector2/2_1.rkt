(define (make-rat n d)
    (cons n d))


; make-rat 支持负数

(define (make-rat-new n d)
    (if (< d 0)
        (cons (- n) (- d))
        (cons n d)))


