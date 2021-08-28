
import Foundation

/*

 
 A Discrete Mathematics professor has a class of students. Frustrated with their lack of discipline, the professor decides to cancel class if fewer than some number of students are present when class starts. Arrival times go from on time ( arrivalTime <= 0 to arrive late arrivalTime > 0)
 k  = numero de estudiantes minimo para dar la clase
 a [Int] = minutos tarde que llegan los estudiantes. -1,-3,4,2
 devolver si cancela la clase o no YES o NO
 
 SEUDOCODIGO
 3
 -1,-3,4,2
 CANCELADA YES (DOS A TIEMPO)
 2
 0,-1,2,1
 
 CONTAR SI i de a <= 0,
 si es igual o mayor que k NO
 si es menor YES
 
 */



func angryProfessor(k: Int, a: [Int]) -> String {
    // Write your code here
    var result = ""
    var count = 0
    for student in a where student <= 0{
        count += 1
    }
    result = count < k ? "YES" : "NO"
    return result
}
print("caso 0: R YES")
print(angryProfessor(k: 3, a: [-1,-3,4,2]))

print("caso 1: R NO")
print(angryProfessor(k: 2, a: [0,-1,2,1]))
