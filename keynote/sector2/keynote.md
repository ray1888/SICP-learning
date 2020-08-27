数据抽象如何使我们能在程序的不同部分之间建立起适当的抽象屏障。

高阶函数已经开始模糊了过程和数据之间的划分。

复合数据中的一个关键性思想使闭包的概念。用于组合数据对象的粘合剂不但能用于组合基本的数据对象，也可以用于复合的数据对象。

## 在有理数的例子中
数据的抽象为list， 是用于构建一个分数.
[/ 1 2 ] 可以理解为把整个表达式也放进去了数据里面(/  1 2 ), 此处把数据和过程开始混合。只是过程这里还是会执行，而list里面只是保存而已。

denom 定义为了获取有理数的分母
numer 定义为获取有理数的分子


# list 的基本操作
cons 连接两个元素
car  获取第一个元素
cdr  获取除第一个元素的剩余元素，为另外的list


# 数据意味着什么
在有理数的实现里面， 我们是基于三个尚未定义的过程make-rat,numer, denom 进行有理数操作的（add-rat... 的构建）

有理数的实现的规则应该是
(numer  x)  / (denom x)  = n / d

make-rat的操作其实可以完全使用过程来进行实现


we can think of data as defined by some collection of selectors and constructors


the ability to
manipulate procedures as objects automatically provides the ability to
represent compound data


procedural representations of data will play a central role in our programming
repertoire. is style of programming is often called message passing,