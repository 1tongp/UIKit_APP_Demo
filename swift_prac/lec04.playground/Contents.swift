import UIKit

var greeting = "Hello, playground"

// Array
var a = (1, 15.6, 30, "hello", true)

print(a)

// define the type of each elements in the array
var b:(Int, String) = (10, "Swift")
print(b)

// empty array
var c = ()
print(c)

// error occured when defined the type of element, but there is no elements in the array (empty array)
//var d:(Int) = ()
//print(d)

// index of the array starting from 0
print(a.0)
print(a.1)
print(a.2)

b.0 = 120
print(b.0)

var d = ("hello", true)
var e = d

print(d)
print(e)
e.0 = "world"

// only copy the value of the array, any modification on the copied one does not effect the original array
print(d)
print(e)

var g = (name1:"hello", name2:true)
print(g.name1)
print(g.name2)

var h:(name1:Int, name2:String) = (30, "Stephen")
print(h)
print(h.name1)
print(h.name2)

// divide the array

// const
let(name1, name2) = ("Swift", 1.5)
print(name1)
print(name2)

var(name3, name4) = (100, true)
print(name3)
print(name4)

// ignore the specific elements in the array by using "_"
let(name5, _, name6) = ("swift", true, 1.5)
print(name5)
print(name6)

var data = (name1:1, name2: "hello", name3:true)

// parameters -> output type
// In this case, input is
func handle(parm:(Int, String, Bool)) -> (Int, String, Bool){
    var data_temp = parm
    data_temp.0 = parm.0 + 1
    data_temp.1 = parm.1 + "world"
    data_temp.2 = false
    return data_temp
}

print(data)
print("---------")
let data2 = handle(parm:data)
print(data2)

