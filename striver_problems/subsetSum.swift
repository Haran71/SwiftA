import Foundation

// Problem Statement: Given an array print all the sum of the subset generated from it, in the increasing order.

struct Global {
    static var result = [Int]()
}

func Guard(_ A:Int?) -> Int {
    guard let n = A else {
        print("Invalid Value entered")
        exit(1)
    }
    return n
}

func soln(_ arr:[Int],_ index:Int,_ sum:Int) -> Void{

    if index == arr.count {
        Global.result.append(sum)
        return 
    }
    soln(arr,index+1,sum)
    soln(arr,index+1,sum+arr[index])
}

let nT = Int(readLine()!)
let n = Guard(nT)

var arr = [Int]()

for _ in 1...n {
    let a = Int(readLine()!)
    arr.append(Guard(a))
}
soln(arr,0,0)
print(Global.result)









