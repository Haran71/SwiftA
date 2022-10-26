import Foundation // imports Darwin as a part of it , so Foundation is enough
// for the exit function

func Guard(A:Int?) -> Int{
    guard let n = A else {
        print("Invalid value")
        exit(1)
    }
    return n
}

let nT = Int(readLine()!)
let n = Guard(A: nT)

var arr = [Int]()

for _ in 0...n-1 {
    let a = Int(readLine()!)
    arr.append(Guard(A:a))
}

for i in 0...n-2 {
    for j in i+1...n-1 {
        if(arr[j] < arr[i]){
            arr.swapAt(j,i)
        }
    }
}
print(arr)

