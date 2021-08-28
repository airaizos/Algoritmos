import Foundation

/*

 Given an array of integers, find the longest subarray where the absolute difference between any two elements is less than or equal to 1.
  
 SEUDOCODIGO
 
 1. Ordenar Array
 2. por cada elemento, si es igual al anterior o la diferencia es 1 cuenta + 1
 3. quitar del array ese elemento.
 4. fin y vuelta a empezar hasta que queden 0 elmentos.
 
 */
func pickingNumbers(a: [Int]) -> Int {
    // Write your code here
    var result = 0
    var elements = a.sorted()
    
    while elements.count > 0 {
        var element = elements.first!
        var count = 0
        for e in elements {
            var index = 0
            if (element == e) || (e - element) == 1 {
                count += 1
                elements.remove(at: index)
            }
            index += 1
        }
        if count > result {
            result = count
        }
    }
    return result
}


print("Case 0. Respuesta 5")
print(pickingNumbers(a: [1,1,2,2,4,4,5,5,5]))

print("Case 1. Respuesta 3")
print(pickingNumbers(a: [4,6,5,3,3,1]))

print("Case 2. Respuesta 5")
print(pickingNumbers(a: [1,2,2,3,1,2]))
