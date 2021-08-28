
import Foundation
/*

 https://www.hackerrank.com/challenges/electronics-shop/problem
 
 A person wants to determine the most expensive computer keyboard and USB drive that can be purchased with a give budget. Given price lists for keyboards and USB drives and a budget, find the cost to buy them. If it is not possible to buy both items, return -1.
 
 */

/*
 [budget, keyboard (n), usb drive(m)]
 [10,2,3]
 [3,1]
 [5,2,8]
 seudocodigo
 
 var blackJack = 0
 indices:[int,int] = [indice keyboard, indice usb]
 sumaActual = 0
 
 for i in keyboards {
 for j in usbs {
 puedoComprar = i + j
 si i + j <= budget{
 resultado =  i + j
 { sino
 GastadoDeMas = -1
 }
 fin
 si resultado > 0{
 devuelve resultado
 sino devuelve Gastado de Mas
 
 
 */
func getMoneySpent(keyboards: [Int], drives: [Int], b: Int) -> Int {
    /*
     * Write your code here.
     */
    var result = 0
    var blackJack = 0
    var overBudget = 0
    
    for k in keyboards {
        for d in drives {
            var mayIHave = k + d
            if (mayIHave > blackJack ) && (mayIHave <= b) {
                blackJack = mayIHave
            } else if mayIHave > b {
                overBudget = -1
            }
            }
        }
    if blackJack > 0 {
        result = blackJack
    } else if overBudget < 0 {
        result = overBudget
    }
    
    
    return result
}
print("case 0")

print(getMoneySpent(keyboards: [3,1], drives:  [5,2,8], b: 10))

print("case 1")

print(getMoneySpent(keyboards: [4], drives:  [4], b: 5))
