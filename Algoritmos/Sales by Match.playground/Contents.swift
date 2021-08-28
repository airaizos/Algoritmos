
import Foundation
/*

 
 There is a large pile of socks that must be paired by color. Given an array of integers representing the color of each sock, determine how many pairs of socks with matching colors there are.
 
 */
let socks = [10, 20, 20, 10, 10, 30, 50, 10, 20]
let socksOrdenados = socks.sorted()
let tipos = socks.reduce(into: [:], { counts, sock in counts[sock, default: 0] += 1 })
print(socksOrdenados)
print(tipos)
/*
 SEUDOCODIGO
 arrayCuentaTipos
 cuentapares
 for (_,i) in arrayTipos
 si i == 1
 {
 else SI i % 2 == 0 {
 cuenta pares += i/2
 ELSE
 pair = i - 1
 cuenta pares += pair / 2
 */

func sockMerchant(n: Int, ar: [Int]) -> Int {
    // Write your code here
    var result = 0
    let types = ar.reduce(into: [:], {
        counts, sock in counts[sock, default: 0] += 1 })
    
    for (_,i) in types where i > 1 {
        if i % 2 == 0 {
            result += i / 2
        } else {
            result += (i - 1) / 2
        }
    }
    
    return result
}

print("Case 0")
print(sockMerchant(n: 9, ar: [10, 20, 20, 10, 10, 30, 50, 10, 20]))
