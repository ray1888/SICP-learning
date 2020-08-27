
;   定义一个抽下，用于描述长方形的特性
; a,b,c here is 2_2 Point for compound data
(define (get-retangle a,b,c)
    (cons (- (car b) car(a))
        (- (cdr c) (cdr b)))
    )


(define (length-of-ret ret)
    (car ret))

(define (width-of-ret ret)
    (cdr ret))    

(define (count-primeter ret)
    (*  2 (+ (length-of-ret ret) (width-of-ret ret))))



(define (count-area parameters)
    (*  (length-of-ret ret) (width-of-ret ret)))


(count-primeter (get-retangle a b c))
(count-area (get-retangle a b c))