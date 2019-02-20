import UIKit

var rotatedWords = [
    "pepe",
    "retrógrado",
    "suplantar",
    "uruguay",
    "xenofobia",
    "asíntota", //<-- rotates
    "barba",
    "baquero",
    "engendrar",
    "karla",
    "oracion"
]

func compare(_ word1: String,_ word2: String) -> Bool {
    if (UnicodeScalar(String(word1.prefix(1)))!.value > UnicodeScalar(String(word2.prefix(1)))!.value ) {
        return true
    }
    return false
}

func findRotation(_ Words: [String]) -> Int{
    var index = 0
    for i in stride(from: 0, to: Words.count - 1, by: 1) {
        if compare(Words[i].lowercased(), Words[i+1].lowercased()) {
            index = i + 1
            break
        }
    }
    return index
}
print(findRotation(rotatedWords))
