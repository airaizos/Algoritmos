
import Foundation

/*

 https://www.hackerrank.com/challenges/utopian-tree/problem
 
 The Utopian Tree goes through 2 cycles of growth every year. Each spring, it doubles in height. Each summer, its height increases by 1 meter.
 A Utopian Tree sapling with a height of 1 meter is planted at the onset of spring. How tall will the tree be after  growth cycles?
 For example, if the number of growth cycles is , the calculations are as follows:
 
 SEUDOCODIGO
 4 CICLOS no años
 7 metros
 primavera dobla su tamaño
 verano aumenta 1
 Ciclo tamaño
 1       1 * 2 ) = 2
 2       2 + 1) = 3
 3       3 * 2 = 6
 4       6 + 1 = 7
 
 si es par + 1
 si es impar dobla su tamaño
 
 4 / 2 = 2 (4 - 2 ) = 2
 por ciclo en 1... ciclos
 si es par  resultado +1
 si es impar resultado * 2
 
 */


func utopianTree(n: Int) -> Int {
    // Write your code here
    var result = 1
    if n != 0 {
    for cycle in 1...n {
        if cycle % 2 != 0 {
            result *= 2
        } else {
            result += 1
        }
    }
} else {
}
    return result
}

print("Caso 0 Result 7")
print(utopianTree(n: 4))

print("Caso 1 Result 2")
print(utopianTree(n: 1))

print("Caso 3 Result 1")
print(utopianTree(n: 0))
