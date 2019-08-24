import UIKit

// 1 - Khai báo biến
// let, var  a : INT (let: hằng số, var: biến số)
var tenBien:String = ""
var tenBien02 = String()
var tenBien03 = "This is String"

let tenBienInt: Int = 5
var tenBienString: String = "Hello"

//String, Int, Float, Double, Array, Dictinary, Struct. Protocol, Tuple, Enum
var num:Int = 0

//Int co nhieu kieu
// Int và UInt: 8, 16, 32, 64. UInt lưu số không âm
print(Int.max)
print(Int.min)

// Float và Double
var bienFloat: Float = 10.0
print("Gia tri cua bien la: \(bienFloat)")


// Mảng
let tenMang = [String]()

let tenMang2:[Int] = [1, 2, 3]
tenMang.count
tenMang2[2]

var tenMang3:Array<Int> = Array<Int>()
tenMang3.append(2)
tenMang3.count

// Dictionary ~ object
var dic: [String: String]
var dic02 = [String: String]()
var dic03 = ["name": "Nguyen Van A", "address": "ABC street"]

// Typle -> Không thể thêm phần tử
var tup = ("Ten gi?", age: 20)
tup.0
tup.age
tup.self

var (nameTup, tuoiTup) = tup
print(nameTup)

// -------------------------------------------
// 2 - Câu lệnh đk
// if - else
let so01: Int = 5

if (so01 > 4) {
    //  empty
} else {
    //  empty
}

// switch - case
let thang: Int = 5

switch thang {
 case 1:
    // empty
    break
 default:
   print("default")
}

// 3 - Vòng lập
// While
var a: Int = 0

while a < 10 {
    a = a + 1
}

// For
for i in 1...10 {
    print(i)
}

for i in 1..<10 {
    print(i)
}

