import UIKit

var greeting = "Hello, playground"

var a = 10
if(a < 10){
    print("a is smaller than 10")
}else if (a > 10){
    print("a is bigger than 10")
}else{
    print("a is equals to 10")
}

var b = ("hello", true)
var c = ("world", true)

if(c == b){
    print("c == b")
}
else{
    print("c != b")
}


var d:Int? = 10
if let value = d{
    print("value of value = \(value)")
}else{
    print("nil")
}


var f:Int! = 100
var h:Int = f   // var h = f, return optional() value
print(f)
print(h)

// var f:Int = 100
// f = nil
// print(f) ->error, because f is Int, can not change to nil

// however,
var z:Int! = 100
z = nil
print(z) // output nil value


