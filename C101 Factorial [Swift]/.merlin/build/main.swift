import Swift
import Foundation
// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let n = 3
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:
func factorial(n: Int) -> Int {
    var result = 1
    if(n > 0) { // making sure the 1...n doesn't cause an error

        for i in 1...n {
            result *= i //calculates the factorial of n
        }
    }
    return result
}
func resultPrint(array: [Int]) { //This function prints the necicarry print statemtns for the assignments
    let arrayCount = array.count-1
    for i in 0...arrayCount {

        if array[arrayCount-i] != 1 {
            print("Non-terminal case, returning \(array[arrayCount-i]).")
        } else {
            print("Terminal case, returning 1.")
        }
    }
    print("The final result is: \(array[0]).")
}
func calculate() { // main function
    var x = n // This allows us to modify the number, since n is a let.
    var resultArray : [Int] = [] // We start the result array empty, then append repeatedly
    while x != 0 {
        print("Calculating factorial(\(x))...") // This print statement has to be in the calculate function due to the requirements
        let result = factorial(n: x) 
        resultArray.append(result)
        
        if result == 1 {
            resultPrint(array: resultArray)
        }
        x -= 1
    }
}
calculate()
