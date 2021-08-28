
import Foundation
/*
 
 https://www.hackerrank.com/challenges/migratory-birds/problem
 
 Given an array of bird sightings where every element represents a bird type id, determine the id of the most frequently sighted type. If more than 1 type has been spotted that maximum amount, return the smallest of their ids.
 It is guaranteed that each type is 1,2,3,4,or 5.
 
 */
 
func migratoryBirds(arr: [Int]) -> Int {
    // Write your code here
    
    var idsCount:[Int] = []
    
    for i in 1...5 {
        idsCount.append( arr.filter { $0 == i }.count)
    }
    guard let max = idsCount.max() else { return 0 }
    let result = idsCount.firstIndex(of: max)! + 1
    return result
}
print("Caso 0")
let sample0 = [1,4,4,4,5,3]
print(migratoryBirds(arr: sample0))

print("Caso 1")
let sample1 = [1,2,3,4,5,4,3,2,1,3,4]
print(migratoryBirds(arr: sample1))


