(define (make-point x  y)
    (cons x y))


(define (x-point point)
    car(point))

(define (y-point point)
    cdr(point))    

; 一个线段可以理解为两个点的连接
(define (make-segment A B)
    (cons A  B))

(define (start-segment s)
   (car  s))


(define (end-segment s)
    (cdr s))

(define (midpoint-segment s)
    (make-point (/  (-  car((end-segment s)  car(start-segment s) ))  2) 
                (/  (-  cdr((end-segment s)  cdr(start-segment s) ))  2))  )

                