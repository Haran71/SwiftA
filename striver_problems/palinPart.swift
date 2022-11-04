import Foundation

extension String {

    var length: Int {
        return count
    }

    subscript (i: Int) -> String {
        return self[i ..< i + 1]
    }

    func substring(fromIndex: Int) -> String {
        return self[min(fromIndex, length) ..< length]
    }

    func substring(toIndex: Int) -> String {
        return self[0 ..< max(0, toIndex)]
    }

    subscript (r: Range<Int>) -> String {
        let range = Range(uncheckedBounds: (lower: max(0, min(length, r.lowerBound)),
                                            upper: min(length, max(0, r.upperBound))))
        let start = index(startIndex, offsetBy: range.lowerBound)
        let end = index(start, offsetBy: range.upperBound - range.lowerBound)
        return String(self[start ..< end])
    }
}

func Guard(_ str:String?) -> String {
    guard let n = str else {
        print("Invalid value entered")
        exit(1)
    }
    return n
}

struct Global {
    static var result = [[String]]()
    static  var str_len:Int = 0
}

func isPalindrome(_ str:String,_ s:Int, _ f:Int) -> Bool {
    var s = s
    var f = f
    while s <= f {
        if str[s] != str[f] {
            return false
        } 
        s += 1
        f -= 1
    }
    return true
}

func soln(_ str:String,_ elem_arr:[String],_ index: Int) -> Void {
    if index == Global.str_len {
        Global.result.append(elem_arr)
        return
    }

    var new_arr = elem_arr // to allow modifications
    
    for i in index..<Global.str_len {
        if(isPalindrome(str, index, i)) {
            new_arr.append(String(str.dropFirst(index).prefix(i+1-index)))
            soln(String(str.dropFirst(i+1)),new_arr,i+1) // you change str everytime and as a result its gets confusing wit fix it!
            new_arr.removeLast()
        }
    }
}

print("Enter string: ",terminator: "")
let str = readLine()! // Guard function may not be necessart, still doesn't hurt to have it
Global.str_len = str.count
soln(str,[],0)
print(Global.result)

