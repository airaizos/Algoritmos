
import Foundation

/* https://www.hackerrank.com/challenges/apple-and-orange/problem
 La casa de Sam tiene un manzano y un naranjo que dan frutos en abundancia. Con la información que se proporciona a continuación, determine la cantidad de manzanas y naranjas que aterrizan en la casa de Sam.
 En el diagrama siguiente:
 La región roja denota la casa, donde S está el punto de inicio y T es el punto final. El manzano está a la izquierda de la casa y el naranjo está a la derecha.
 Suponga que los árboles están ubicados en un solo punto, donde el manzano está en el punto A y el naranjo está en el punto B .
 Cuando una fruta cae de su árbol, aterriza D unidades de distancia desde su árbol de origen a lo largo del eje X-. * Un valor negativo de D significa que la fruta cayó D unidades a la izquierda del árbol y un valor positivo de D significa que cae D unidades a la derecha del árbol. *
 
 Dado el valor de D para M manzanas y N naranjas, determine cuántas manzanas y naranjas caerán en la casa de Sam (es decir, en el rango inclusivo [S,T]).
 INPUTS:
 7 11
 5 15
 3 2
 -2 2 1
 5 -6
 OUTPUT:
 1
 1
 */


func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {
    
    var applesPos = apples.map { $0 + a }
    var orangesPos = oranges.map {$0 + b }
    var samApples = 0
    var samOranges = 0
    
    for a in applesPos where a >= s && a <= t {
        samApples += 1
    }
    for o in orangesPos where o >= s && o <= t {
        samOranges += 1
    }
    
    print("\(samApples)")
    print("\(samOranges)")
}

countApplesAndOranges(s: 7, t: 11, a: 5, b: 15, apples: [-2,2,1], oranges: [5,-6])
