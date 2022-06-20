import UIKit

var greeting = "Hello, playground"

// String

var str = "ABCDEF"
print(str)

// check the length of the string
print(str.count)

// error if we use index: print(str[0])

// first element
str.startIndex
print(str[str.startIndex])

// next index of the last element
str.endIndex // in this case, its the element after F

// (before: x), x is the index, this means element before the index x
// end element index of this string
str.index(before: str.endIndex)
print(str[str.index(before: str.endIndex)])

// (y, offsetBy: x) means starr from index y, count up by x, the xth element starts from y
print(str[str.index(str.startIndex, offsetBy: 3)])// start from 0, count up by 3, in this case the output is the element with index 4

print("----")
var a = str.index(str.startIndex, offsetBy: 2)
var b = str.index(str.startIndex, offsetBy: 4)
print(str[a..<b])
print(str[a...b])
print("----")

var c = str.firstIndex(of:"E") ?? str.endIndex // if the string contains "E", then c is the index of E. Otherwise, c is the index of the string.endIndex(next index of the element)
print(str[str.startIndex...c])
print("----")
print(str.prefix(4))// start from 0 to 4 (4 is not included)

print("----")
let index = str.index(str.endIndex, offsetBy:-2)
print("get the last 2 elements of the str = " + String(str[index..<str.endIndex]))

// (after: x) means get the index that after the index of element x
print(str[str.index(after: str.startIndex)])
print(str.startIndex)

// contains
print(str.contains("BF"))
print(str.contains("BC"))

print(str.contains(where: String.contains("BF"))) // contains B, return true. str contains one of "BF" will returns true

print("check if the str has contians a specific prefix = " + String(str.hasPrefix("B")))
print("check if the str has contains a specific suffix = " + String(str.hasSuffix("EF")))

var str2 = "ABCDEF"
str2.append("hahaha")
print(str2)

// insert a term at the offset-start position
str.insert(contentsOf: "hello", at: str.index(str.startIndex, offsetBy: 3))
print(str)

print("----")
str = "ABCDEF"
// replace
let index1 = str.index(str.startIndex, offsetBy: 1)
let index2 = str.index(str.startIndex, offsetBy: 3)
let range = index1...index2 // index 1 to 3 inclusive
str.replaceSubrange(range, with: "123123")
print(str)

print("----")
str = "ABCDEF"
// replace
let index3 = str.index(str.startIndex, offsetBy: 1)
let index4 = str.index(str.startIndex, offsetBy: 2)
let range2 = index3..<index4 // index 1 to 2 exclusive
str.replaceSubrange(range2, with: "K") // replace the specific element, in this case, element with index 1
print(str)

print("----")
str = "ABCDEF"
// replace specific term with another term
var new_value = str.replacingOccurrences(of: "BC", with: "888")
print(new_value)

print("----")
str = "ABCDEF"
// delete the element that at the specific index
str.remove(at: str.index(str.startIndex, offsetBy: 2))
print(str)

print("----")
str = "ABCDEF"
var s = str.index(str.startIndex, offsetBy: 1)
var g = str.index(str.startIndex, offsetBy: 3)

// delete by a range, s..<g in this case is index 1 and 2, 3 is exclusive
str.removeSubrange(s..<g)
print(str)

print("---for loop by items")
str = "ABCDEF"
for value in str{
    print(value)
}

print("----for loop by indexes")
for index in 0..<str.count{
    print(str[str.index(str.startIndex, offsetBy: index)])
}

print("----for loop by indexes and reversed ")
for index in (0..<str.count).reversed(){
    print(str[str.index(str.startIndex, offsetBy: index)])
}

print("----")
// #" means this " is not indicated as string sign, this is along with the variable term
var value = #""hello swift world""#
print(value)

