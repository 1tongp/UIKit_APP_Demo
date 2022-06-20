import UIKit

var greeting = "Hello, playground"

var a = 1 + 2 * 3
print(a)

a = (1 + 2) * 3
print(a)

var b:Int? = 100

// if b does not have a value, then b equals to 0
var value = b ?? 0
print(value)

//var c:Int? = nil
var c:Int? = 100
// c != nil returns a boolean, if true, then value1 = c,otherwise value1 = 0 when false
var value1 = c != nil ? c! : 0
print(value1)


var value2 = -1
if(c == nil){
    value2 = 0
}else{
    value2 = c!
}
print(value2)
