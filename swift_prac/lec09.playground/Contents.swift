import UIKit

var greeting = "Hello, playground"

// while loop and repeat while loop

var a = 0
while (a < 5){
    print(a)
    a = a + 1
}

print("----")
a = 0
var b = true
while (b){
    print(a)
    a = a + 1
    if(a > 5){
        b = false
    }
}

print("----")
a = 0
b = true
repeat{
    print(a)
    a = a + 1
    if(a > 5){
        b = false
    }
}
while(b)
