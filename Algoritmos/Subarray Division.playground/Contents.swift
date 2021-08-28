
import Foundation
/* https://www.hackerrank.com/challenges/divisible-sum-pairs/problem
 
 You are given an array of integers, , and a positive integer, . Find and print the number of pairs where and + is divisible by K .
 
 INPUT
 n = 6 k=3
 [1,3,2,6,1,2]
 OUTPUT
 5
 EXPLANATION
 [0,2]
 [0,5]
 [1,3]
 [2,4]
 [4,5]
 */


func divisibleSumPairs(n: Int, k: Int, ar: [Int]) -> Int {
    var result = 0
    var controlArray = ar
    var numbers = n
    var index = 0
    for i in 1..<numbers {
        
        // probar ya
        var mappedArray = controlArray
        print("1 mapped Array \(mappedArray)")
        mappedArray.remove(at: 0)
        print("2 mapped Array \(mappedArray)")
        mappedArray = mappedArray.map { $0 + controlArray[0] }
            print("3 mapped Array \(mappedArray)")
        
        controlArray.remove(at: 0)
        
            for j in mappedArray where j % k == 0 {
                result += 1
                print("J: \(j)")
                
        }
        numbers -= 1
        index += 1
    }
    return result
}


print("Caso 0 RESULT:")
print(divisibleSumPairs(n: 6, k: 3, ar: [1,3,2,6,1,2]))
