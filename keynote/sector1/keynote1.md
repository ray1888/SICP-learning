一句非常有意义的话

函数与过程（更多指编程语言中的函数）之间的矛盾，不过是在描述一件事情的特征，与描述如何去做这件事情之间的普遍性差异的一个具体反应。换一种说法，人们有时也将它说成是说明性的知识与行动性的知识之间的差异。在数学里，人们通常关心的是说明性的描述，再计算机科学里，人们则通常关心行动性的描述。

二。

```
// 过程一

(define (fac n)
    (if (= n 1))
      1 
      (* n fac(- n 1)))


// 过程二
(define (fac n)
    (fac-iter 1 1 n))

(defind (fac-iter product counter max-count)
    (if (> counter max-count)
        product    
        (fac-iter (* counter product )
                  (+ counter 1 )
                    max-count)))    
```

在做迭代和递归之间的比较时，我们必须当心，不要搞混了递归计算过程的概念和递归过程的概念。当我们描述一个过程是递归的时候，更多的是描述语法上面的递归（是否有调用自身）。说某一个计算过程是递归的时候，描述的是计算过程的进展方式，而不是是否在声明上。

所以上面两段代码，两个过程都是递归，但是只有第一个是计算过程的进展方式上面的递归


# 高阶函数抽象

以过程作为参数或者以过程作为返回

```
(define (<name> a b)
  (if (> a b )
    0
    (+ (<term> a)
       (name (next a) b))))
```

如果对于上述的抽象过程，其实可以变成把term 和next 是函数传递进来变成下面的样子

```
(define (sum term  a next b )
  (if (> a b )
    0
    (+ (term a)
       (sum term (next a) next b))))
```

可以变成这个样子来进行处理


```
(define (sum term a next b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a)
                  (+ (term a) result))))
    (iter a 0))
```
此段代码可以立即为迭代的实现