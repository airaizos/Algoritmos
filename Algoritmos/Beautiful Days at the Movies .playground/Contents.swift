import Foundation
/*
 Beautiful Days at the Movies


 https://www.hackerrank.com/challenges/beautiful-days-at-the-movies/problem
 
 Lily likes to play games with integers. She has created a new game where she determines the difference between a number and its reverse. For instance, given the number , its reverse is . Their difference is . The number  reversed is , and their difference is .
 She decides to apply her game to decision making. She will look at a numbered range of days and will only go to a movie on a beautiful day.
 Given a range of numbered days,  and a number , determine the number of days in the range that are beautiful. Beautiful numbers are defined as numbers where  is evenly divisible by . If a day's value is a beautiful number, it is a beautiful day. Return the number of beautiful days in the range.
 
 
 SEUDOCODIGO
 
 por cada dia entre i (primer dia) y j (ultimo dia) :
 
 restar su reverse 20 -> 02 = 18 y dividirlo entre k. si el resto es 0. result += 1
 
 reverse : 123 -> por n in 123 -> (pila ?) 3,2,1, insertar en index 0
 
 
 
 */

func beautifulDays(i: Int, j: Int, k: Int) -> Int {
    // Write your code here
    var result = 0
  
    for day in i...j where (day - Int(String(String(day).reversed()))!) % k == 0 {
            result += 1 
    }
    return result
}


print("Case 0 | Result = 2")

print("R: \(beautifulDays(i: 20, j: 23, k: 6))")

print("Case 1 | Result = 33")

print("R: \(beautifulDays(i: 13, j: 45, k: 3))")

print("Case 2 | Result = 2998")

print("R: \(beautifulDays(i: 1, j: 2000000, k: 23047885))")
