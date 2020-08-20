(define (double n)
    n + n)

(define (havle n)
   (cond ((even? n) (/ n 2) )))


(define (make-multi  a b  )
    (cond ((= b 0) 0)
        ((even?  b )  (double(make-multi  a (havle b ) )) )
        (else  (+  a  (make-multi a  (- b 1))) )))