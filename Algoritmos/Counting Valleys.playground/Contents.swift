
import Foundation
/*
 Counting Valleys

 https://www.hackerrank.com/challenges/counting-valleys/problem
 
 Gary is an avid hiker. He tracks his hikes meticulously, paying close attention to small details like topography. During his last hike, he took exactly n steps. For every step he took, he noted if it was an uphill or a downhill step. Gary's hikes start and end at sea level. We define the following terms:
 A mountain is a non-empty sequence of consecutive steps above sea level, starting with a step up from sea level and ending with a step down to sea level.
 A valley is a non-empty sequence of consecutive steps below sea level, starting with a step down from sea level and ending with a step up to sea level.
 Given Gary's sequence of up and down steps during his last hike, find and print the number of valleys he walked through.
 
 */
/* SEUDOCODIGO
 1. convertir el pat en un ARRAY donde D = -1, U = 1
 2. es valle si el result previo es negativo
 es montaña si el result previo era positivo
 3.for i in array
 result += 1
 si result < 0 negativo ha entrado en un valle += 1
 cuentaValle += 1
 estaEnUnValle = true
 cuando result == 0
 esta en un valle == false
 */



func countingValleys(steps: Int, path: String) -> Int {
    // Write your code here
    var result = 0
    var array: [Int] = []
    var isInAValley  = true
    var isInSeaLevel = true
    var valleyCount = 0
    for i in path as String {
        
        result += (i == "D" ? -1 : 1)
        if i == "D" && result == -1 {
            valleyCount += 1
        }
        
        }
    return valleyCount
}

//TODO: en el ultimo se juntan a nivel 0 es un valle y esta en el nivel del mar

print("case 0 Output 1")
print(countingValleys(steps: 6, path: "UDDDUDUU"))

print("case 00 Output 2")
print(countingValleys(steps: 6, path: "DDUUDDUDUUUD"))

print("case 1")
print(countingValleys(steps: 6, path: "DDUDDUUDUU"))

