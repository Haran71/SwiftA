import Foundation

// Problem Statement: Given N and K, where N is the sequence of numbers from 1 to N([1,2,3….. N]) find the Kth permutation sequence.

func Guard(_ A:Int?) -> Int {
    guard let n = A else {
        print("Invalid Value entered")
        exit(1)
    }
    return n
}

struct Global {
    static var result:Int = 0
}

func factorial(_ n: Int) -> Double {
    if(n==0) {
        return 1
    }
    return (1...n).map(Double.init).reduce(1.0, *)
}

func soln(_ Arr:[Int], _ K:Int) {
    if Arr.count == 1 {
        Global.result *= 10
        Global.result += Arr[0]
        return
    }
    

    let N = Arr.count
    let category = Int(ceil(Double(K)/(factorial(N-1))))


    Global.result *= 10
    Global.result += Arr[category-1]

    var new_arr = Arr
    new_arr.remove(at: category-1)

    soln(new_arr,K%Int(factorial(N-1)))


}

let n = Guard(Int(readLine()!))
let k = Guard(Int(readLine()!))

//let rangeArr:[Int] = Array()
soln(Array(1...n),k)
print(Global.result)

