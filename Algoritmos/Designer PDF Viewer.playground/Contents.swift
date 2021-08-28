
import Foundation

/*

 Designer PDF Viewer
 https://www.hackerrank.com/challenges/designer-pdf-viewer/problem
 A video player plays a game in
 When a contiguous block of text is selected in a PDF viewer, the selection is highlighted with a blue rectangle. In this PDF viewer, each word is highlighted independently. For example:
 PDF-highighting.png
 There is a list of  character heights aligned by index to their letters. For example, 'a' is at index  and 'z' is at index . There will also be a string. Using the letter heights given, determine the area of the rectangle highlight in  assuming all letters are  wide.
  
 SEUDOCODIGO
 var abcedario = [a,b,c,d,e...]
 wordInArray = [""]
 zaba
 for letter in word {
 letter.append(wordInArray)
 las letras en el wordInArray buscalas en el abecedario y devuelve su indice.
 
 el indice buscalo en h, y asigna a max la altura maxima.
 
 multiplica la altura maxima por la cantidad de letras de la palabra
 */
var abc:[Character] = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

var indice = abc.firstIndex(of: "z")

func designerPdfViewer(h: [Int], word: String) -> Int {
    // Write your code here
    var abc:[Character] = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    var wordInArray:[Character] = []
    var maxHeight = 1
    for letter in word {
        wordInArray.append(letter)
        var letterIndex = abc.firstIndex(of: letter)
        if h[letterIndex!] > maxHeight {
            maxHeight = h[letterIndex!]
        }
    }
    return wordInArray.count * maxHeight
}

print("caso 0 R: 9")
print(designerPdfViewer(h: [1,3,1,3,1,4,1,3,2,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5], word: "abc"))
print("caso 1 R: 28")
print(designerPdfViewer(h: [1,3,1,3,1,4,1,3,2,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,7], word: "zaba"))
