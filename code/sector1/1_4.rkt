(define (a-plus-abs-b a b)
    (if (> b 0)
        (+ a b)
        (- a b)))

(= 7 (a-plus-abs-b 3 4))
(= 8 (a-plus-abs-b 3 -5))