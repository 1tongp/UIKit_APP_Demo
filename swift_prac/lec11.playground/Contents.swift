import UIKit
import os
import Foundation

var greeting = "Hello, playground"

// array
var a = [1, 2, 3, 4]
print(a)

var b:[String] = ["hello", "world"]
print(b)

var c:Array<Double> = [1.4, 1.6]
print(c)

// indexing
c[0]
print(c[0])
print(c[1])

// modifiy
c[0] = 12.5
print(c)

// empty array
var array:Array<Int> = []
print(array)

var arra1 = [Int]() // 通过初始化器， 定义可变的空数组
print(arra1)

print("----")
let arra2 = [4,5,6] // let defines a constant, so this arra2 can not be changed (add, delete, modify), but can be checked through the index
// arra2.append(7)
//arra2[0] = 30
print(arra2[0])

print("----")
var arra3 = Array(repeating:-1, count:3) // 通过array初始化器， 生成一个初始值为-1， 长度为3的数组
print(arra3)
arra3.replaceSubrange((0..<arra3.count), with:[7, 8, 9])
print(arra3)

print("----concate array")
var ary = ["hello", "world", "swift"]
ary = ary + ["ios", "macos"]
print(ary)

print("----add element after this exicted array")
ary = ["hello", "world", "swift"]
ary.append("add append")
print(ary)

print("----modify")
ary = ["hello", "world", "swift"]
ary[0] = "ios"
print(ary)

print("----check and find")
ary = ["hello", "world", "swift"]
print(ary[2])
print(ary.contains("helloha")) // return true if contains, verse versa

print("----insert")
ary = ["hello", "world", "swift"]
ary.insert("aaaa", at:1) // insert element at index 1, then the new inserted element has the position of index 1
print(ary)

print("----replace")
ary = ["hello", "world", "swift"]
ary.replaceSubrange((0...1), with: ["macos", "windows"])
print(ary)

print("----delete")
ary = ["hello", "world", "swift"]
ary.remove(at:0) // delete the element with specific index
print(ary)

// sort in reverse order 从大到小
print("----sort")
var sort_example = ["A", "C", "D", "B", "F", "E"]

// lambda 匿名函数
sort_example.sort(by:{(item1, item2) -> Bool in
    if(item1 > item2){
        return true
    }
    else{
        return false
    }
})
print(sort_example)

// filter a specific element from array
print("----filter")
sort_example = ["A", "C", "D", "B", "F", "E"]
var result = sort_example.filter({(item) -> Bool in
    if(item != "D"){
        return true
    }
    else{
        return false
    }
})
print(result)

print("----compare")
var array1 = [1, 2, 3]
var array2 = [1, 2, 3, 6]
if(array1 == array2){
    print("array1 == array2")
    
}else{
    print("array1 != array2")
}

//array traversal
print("----traverse")
var array3 = ["A", "B", "C", "D"]
for item in array3{
    print(item)
}

print("----sub traverse")
for i in (0..<array3.count){
    print(array3[i])
}

print("----traversal all")
for j in array3[0...]{
    print(j)
}
