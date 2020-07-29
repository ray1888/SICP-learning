(define (sum-max a b c )
    (if (> 
            (+ a b)
            (+ b c))
        (+ a b)
        (+ b c)     
    ))