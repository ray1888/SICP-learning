

(define (count-change amount)
    (cc  amount 5))

(define (cc amount kind-of-coins)
    ((or (< amount 0)  (= kind-of-coins 0)  0 ))
    (else (+ (cc amount (- kind-of-coins 1))
             (cc (- amount (first-denomination kind-of-coins))  kind-of-coins) )))


(define (first-denomination kinds-of-coins)
    (cond   ((== kinds-of-coins 1) 1)
            ((== kinds-of-coins 2) 5)
            ((== kinds-of-coins 3) 10)
            ((== kinds-of-coins 4) 25)
            ((== kinds-of-coins 5) 50)))

