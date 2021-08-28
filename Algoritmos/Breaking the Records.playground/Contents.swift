import Foundation

/*
 https://www.hackerrank.com/challenges/breaking-best-and-worst-records/problem
 Maria plays college basketball and wants to go pro. Each season she maintains a record of her play. She tabulates the number of times she breaks her season record for most points and least points in a game. Points scored in the first game establish her record for the season, and she begins counting from there.
 */


func breakingRecords(scores: [Int]) -> [Int] {
    var result:[Int] = []
    guard var min = scores.first else { return [0] }
    guard var max = scores.first else { return [0]}
    var minCount = 0
    var maxCount = 0
    
    for score in scores {
        
        if score < min  {
            min = score
            minCount += 1
        }
        
        if score > max {
            max = score
            maxCount += 1
        }
        
    }
    result.append(maxCount)
    result.append(minCount)
    
    return result
}

print("caso 0")
print(breakingRecords(scores: [10,5,20,20,4,5,2,25,1]))

print("caso 1")
print(breakingRecords(scores: [3,4,21,36,10,28,35,5,24,42]))

print("caso 3")
print(breakingRecords(scores: []))
