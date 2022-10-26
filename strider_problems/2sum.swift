import Foundation

func Guard(A:Int?) -> Int {
    guard let n = A else {
        print("Invalid value entered")
        exit(1);
    }
    return n;
}

print("Enter length of array:",terminator: " ")
let nT = Int(readLine()!)
let n = Guard(A: nT)

print("Enter target value:",terminator: " ")
let tt = Int(readLine()!)
let target = Guard(A: tt)


var arr = [Int]()
for _ in 1...n {
    let a = Int(readLine()!)
    arr.append(Guard(A:a))
}

var map = [Int:Int]()

for i in 0...n-1 {
    let val = arr[i]
    if map[target-val] != nil {
        print(val,target-val,separator: " and ")
        exit(0);
    }
    map[val] = 1;
}
print("Required combination does not exist")

