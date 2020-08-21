(define (product term a next b)
    (if (> a b)
        0
        (* (term a) (product (next  a) next b)))





