func max(A:Int,B:Int) -> Int {
    return A > B ? A:B;
}

let n:Int = Int(readLine()!) ?? 5; 


var arr = [Int]();

for _ in 1...n{
    let a:Int! = Int(readLine()!); // Forced unwrapping
    arr.append(a);
}

var result:Int = -99999;
var Current:Int = 0;

for i in 0...n-1{
    Current += arr[i];
    result = max(A: result, B: Current);
    if (Current < 0){
        Current = 0;
    }
}
print(result);

