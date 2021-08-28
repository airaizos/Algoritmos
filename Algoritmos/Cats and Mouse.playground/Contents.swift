
/*

 https://www.hackerrank.com/challenges/cats-and-a-mouse/problem
 
 Two cats and a mouse are at various positions on a line. You will be given their starting positions. Your task is to determine which cat will reach the mouse first, assuming the mouse does not move and the cats travel at equal speed. If the cats arrive at the same time, the mouse will be allowed to move and it will escape while they fight.
 
 x :  😼 A Posicion
 y : 🐈 B Posición
 z : 🐭 Posición
 
 Caso 0:
 😼:1, 🐈:2, 🐭:3
 Gato B Gana
 
 Caso 1:
 😼:1, 🐈:3, 🐭:2
 Ratón Escapa
 
 SEUDOCODIGO
 Dist A = Raton - Gato A
 Dist B = Raton - Gato B
 
 si dist A = dist B :  Raton Escapa
 
 si  dist A < dist B : Gana Gato A
 si dist A > dist B : Gana Gato B
 
 */
func catAndMouse(x: Int, y: Int, z: Int) -> String {
    var result = ""
    var distA = z > x ? z - x : x - z
    var distB = z > y ? z - y : y - z
    
    if distA > distB {
        result = "Cat B"
    } else if distA < distB {
        result = "Cat A"
    } else {
        result = "Mouse C"
    }
    
    return result
}

print("Case 0")

print(catAndMouse(x: 1, y: 2, z: 3))

print("Case 1")

print(catAndMouse(x: 1, y: 3, z: 2))
