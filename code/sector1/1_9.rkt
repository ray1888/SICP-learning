; 1 是迭代
; 2 是递归


(require racket/trace)

(define (inc a)
    (+ a 1))

(define (dec a)
    (- a 1))    

(define (plus a b)
    (if (= a 0)
        b
        (inc (+ (dec a) b))))

(trace plus)
(plus 4 5)


(define (plus2 a b)
    (if (= a 0)
        b
        (+ (dec a) (inc b))))

(trace plus2)
(plus2 4 5)