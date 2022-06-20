import UIKit

var greeting = "Hello, playground"
// synatx error when defining a nil variable
// var a = nil

// define a nil variable
// if a is assigned a int value, then a is int wirh value 10
var a:Int? = 10

// if a is not assigned with a int value, then a is a nil variable
var b:Int? = nil

var c:String? = "hello"

print(a)
print(a ?? 0)

// once we the value of a variable is confirmed, we can use "variable!" to get the value of this variable
print(a!)

// print(b!) will cause an error as we are not sure about the value of b, b is nil
print(b)

print(c)
print(c!)


var value :String? = "hello world"

//value = nil
print(value)
if(value == nil){
    print("value is nil")
}else{
    print("the value of the value is " + value!)
}


var f:Int? = 10
if(f == nil){
    print("value is nil")
}else{
    print("the value of a is \(a!)")
    print("the value of a is " + String(a!))
}
