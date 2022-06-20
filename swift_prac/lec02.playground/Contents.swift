import UIKit

var greeting = "Hello, playground"

// type def, set dog as another name of Int
typealias dog = Int
var a:dog = 10
var b:Int = 20
print(a, b)

typealias S = String
let c:S = "hello"
var d:String = "World"
print(c + d)

var e = 10
// change the Int type to String type
print("the value is = " + String(e))


var f = "10"
print(Int(f))

// if Int(f) output a nil value, then use 100 as the output
print(Int(f) ?? 100)

var g = "haha"

// "haha" can not change to a int type, so output nil
print(Int(g))

// As Int(g) returns nil, then we use 100 as the output to return
print(Int(g) ?? 100)

// keep the integer part
print(Int(100.9))

// value that not nil and not 0 is true
print(Bool(0))
print(Bool(1))
