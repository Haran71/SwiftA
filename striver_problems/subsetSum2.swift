import Foundation

func Guard(_ A:Int?) -> Int {
    guard let n = A else {
        print("Invalid Value entered")
        exit(1)
    }
    return n
}

struct Global {
    static var result = [[Int]]()
}

func soln(_ arr:[Int], _ index:Int, _ elem_arr:[Int]) -> Void{

    if index == arr.count {
        if (!Global.result.contains(elem_arr)) {
            Global.result.append(elem_arr)
        }    
        return
    }
    
    soln(arr,index+1 ,elem_arr)

    var new_arr = elem_arr
    new_arr.append(arr[index])

    soln(arr,index+1,new_arr)

}

let nT = Int(readLine()!)
let n = Guard(nT)

var arr = [Int]()

for _ in 1...n {
    let a = Int(readLine()!)
    arr.append(Guard(a))
}
soln(arr,0,[])

print(Global.result)




