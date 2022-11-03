import Foundation

func Guard(A:Int?) -> Int {
    guard let n = A else {
        print("Invalid value entered")
        exit(1)
    }
    return n;
}

func binarySearch(arr:[Int],target:Int) -> Int{
    var l = 0;
    var u = arr.count - 1

    var mid:Int

    while l<=u {
        mid = (l+u)/2
        if arr[mid]==target {
            return mid
        }
        if arr[mid] < target {
            l = mid + 1
        }
        else {
            u = mid - 1
        }
    }
    return -1
}
let nT = Int(readLine()!)
let n = Guard(A: nT)

var arr = [Int]()

for _ in 0...n-1 {
    let a = Int(readLine()!)
    arr.append(Guard(A: a))
}

print("Enter value to be found:",terminator: " ")
let tt = Int(readLine()!)
let target = Guard(A: tt)

arr.sort()

let pos = binarySearch(arr: arr, target: target)

if pos == -1 {
    print("Target value does not exist")
} 
else {
    print("Target value found at the index \(pos)")
}



