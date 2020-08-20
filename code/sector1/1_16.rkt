(define (even? n)
    (= (reminder n 2) 0))

(define (make-mod  b n a )
    (cond ((= n 0) a)
        ((even? n)  (square(fast-expt  b (/  n 2) a)) )
        (else  (*  b  (fast-expt b  (- n 1)) a) )))