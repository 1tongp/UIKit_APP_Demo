import UIKit

var greeting = "Hello, playground"

// switch　case
var a = 10
switch a{
    case 10:
        print("case 1")
        fallthrough // 穿透效果
    case 20:
        print("case 2")
    default:
        print("fault")
}

var b = "b"
switch b{
    case "a", "b", "c":
        print("case 1")
    case "e":
        print("case 2")
    default:
        print("false")
}

var c = 5
switch c{
case 1..<5: // range 1 to 4
    print("case1")
default:
    print("false")
}

var value = (10, 20)
switch value{
    case let(name1, name2):
        print("name1 = \(name1)")
        print("name2 = \(name2)")
    case var(10, name3):
        print("name3 = \(name3)")
    default:
        print("other cases")
}

switch value{
    case let(name1, name2) where name1 < name2:
        print("-----")
        print("name1 = \(name1)")
    case var(10, name3):
        print("name3 = \(name3)")
    default:
        print("other cases")
}
