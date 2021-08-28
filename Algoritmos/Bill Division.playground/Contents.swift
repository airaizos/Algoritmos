
import Foundation
/*
 
 https://www.hackerrank.com/challenges/bon-appetit/problem
 
 Two friends Anna and Brian, are deciding how to split the bill at a dinner. Each will only pay for the items they consume. Brian gets the check and calculates Anna's portion. You must determine if his calculation is correct.
 For example, assume the bill has the following prices: bill = [2,4,6]
 costs . If Brian calculates the bill correctly, Anna will pay (2+4)/2 = 3 calculate (2+4+6)/2 = 6. In the second case, he should refund 3 to Anna.
 
 */

/*
 SEUDOCÓDIGO
 Quitar de la cuenta  lo que no se ha comido Ana bill[k]
 tocaA = Sumar el array y dividirlo entre 2.
 SI tocaA > B: PRINT BonAppetit
 ELSE B - tocaA
 */

func bonAppetit(bill: [Int], k: Int, b: Int) -> Void {
    // Write your code here
    var billFor2 = bill
    billFor2.remove(at: k)
    var totalPerPerson = 0
    for i in billFor2 {
        totalPerPerson += i
    }
    totalPerPerson /= 2
    if totalPerPerson >= b {
        print("Bon Appetit")
    } else {
        print("\(b - totalPerPerson)")
    }
    
}
print("caso 0")
bonAppetit(bill: [3,10,2,9], k: 1, b: 7)

print("caso 1")
bonAppetit(bill: [3,10,2,9], k: 1, b: 12)
