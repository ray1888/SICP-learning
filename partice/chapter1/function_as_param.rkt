; 此处中next 为 a+ 1
(define (sum-intergers a b)
    (if (> a b)
       0)
    (+ a (sum-intergers (+ a 1) b)))

; 此处中next 为 a+ 1
(define (sum-cubes a b)
    (if (> a b)
       0)
    (+ (cube a) (sum-cubes (+ a 1) b)))


; 此处中next 为 a+ 4
(define (pi-sum a b)
    (if (> a b)
       0)
    (+ (/ 1.0 (* a (+ a 2))) (pi-sum (+ a 4) b)))


; common-pattern is below 
; 此处为伪代码
(define (<name> a b)
    (if (> a b) 
        0
        (+ (<term> a) (<name> (<next>a) b)))
)

; 上面抽象出来的实际代码
; term 为具体的操作，next 为数据迭代的变化函数
(define (sum term a next b)
    (if (> a b)
        0
        (+ (term a) (sum (next  a) next b)))


