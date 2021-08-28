
import Foundation
/*
 
 https://www.hackerrank.com/challenges/drawing-book/problem
 
 A teacher asks the class to open their books to a page number. A student can either start turning pages from the front of the book or from the back of the book. They always turn pages one at a time. When they open the book, page  is always on the right side:
 
 When they flip page 1, they see pages 2 and 3. Each page except the last page will always be printed on both sides. The last page may only be printed on the front, given the length of the book. If the book is n pages long, and a student wants to turn to page p, what is the minimum number of pages to turn? They can start at the beginning or the end of the book.
 Given n and p , find and print the minimum number of pages that must be turned in order to arrive at page p.
 
 n = total de páginas
 p = pagina a buscar
 */
/*
 
 SEUDOCODIGO
 puede empezar desde la 1 o desde la n
 siempre irá de 1 en 1
 la menor cantidad de paginas pasadas.
 la primera página solo tiene la pagina 0 - 1
 6 paginas
 busco la pagina 2
 resultadocorto = 1
 resultado largo = 2
 
 si p =< ((n /2) + 1) empiezo por la 1,
 si p > (n /2) empeizo por la n,
 si p == (n/2)
 ____
 
 si p = 1 enteonces resultado = 0
 si p = 2 entonces resultado = 1
 
 si p = n entonces 0
 si p es par Y  p = n - 1 entonces 0
 
 A:
 (si p es impar  p - 1 ) / 2
 
 10 pag
 4 pag buscada
 0: 0 -1
 1: 2-3
 2: 4-5   <-
 
 0: 10 -0
 1: 8 - 9
 2: 6 - 7
 3: 4 - 5
 
 B:
 si p es par Y n = p entonces 0
 
 si p es impar Y  p = n - 1 entonces 1
 
 si p es par Y p < n entonces
 result = (n - p ) / 2 = 1
 
 si p es impar Y p < (n - 1) entonces
 result = (n - p) / 2 = 2
 
 
 
 
 
 5 paginas
 4 pag buscada
 resultado
 0
 
 */

print("\((7 / 2) + 1)")
func pageCount(n: Int, p: Int) -> Int {
    // Write your code here
    var result = 0
    
    if p < ((n / 2) + 1) {
        //empiezo por pagina 1
        if p % 2 != 0 {
            // si p es impar
            switch p {
            case 1: result = 0
                case 2: result = 1
                    default: result = p / 2
            }
        } else {
            // si p es par
            result = p / 2
        }
    } else {
        //empiezo por pagina n
        if p % 2 == 0 {
            // si p es par
            if p == n {
                //si p es la ultima pagina
                result = 0
            } else {
                result = (n - p) / 2
            }
        } else {
            if p == (n - 1) {
                // si p = n -1
                result = 1
            } else {
                // si p < n - 1
                result = (n - p) / 2
            }
        }
    }
    return result
}

print("case 0")
print(pageCount(n: 5, p: 4))
print("case 00")
print(pageCount(n: 6, p: 2))

print("case 2")
print(pageCount(n: 7, p: 4))
