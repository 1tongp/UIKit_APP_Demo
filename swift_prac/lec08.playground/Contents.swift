import UIKit

var greeting = "Hello, playground"

var a = 1...4 // 1, 2, 3, 4
print("range of a = \(a)")

var b = 1..<4 // 1, 2, 3
print("range of b = \(b)")

var c = -3...4
print("range of c = \(c)")

var d = (2.5) ... 4
print("range of d = \(d)")

var e = 0...
print("range of e = \(e)")

for index in 0...5{ // bracket can be ignored, (0...5) is also a correct format
    print(index)
}
print("----")

for index in stride(from: 0, to: 10, by: 2){
    // (start, end, step), end element is not included
    print(index)
}

print("----")
for index in stride(from:-4, through:11, by:3).reversed(){
    // (start, end, step), end element is included now
    // .reversed() is to reverse the step
    print(index)
}

print("----")
for index in (0...5){
    if(index == 2){
        continue
    }
    print(index)
}

print("----")
for index in (0...5){
    if(index == 2){
        break
    }
    print(index)
}

print("----")
for index in (0...3){
    print("outer loop = \(index)")
    for item in (0...3){
        if(item == 1){
            break
        }
        print("inner loop = \(item)")
    }
}
