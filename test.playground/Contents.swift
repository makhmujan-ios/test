import Foundation

func lenghtCharacters(word: String) -> String {
    var lenghtString = ""
    var counter = 0
    
    for (index, character) in word.enumerated() {
        if index == 0 {
            lenghtString.append(character)
        }
        
        if character != lenghtString.last {
            lenghtString.append(String(counter))
            lenghtString.append(character)
            counter = 1
        } else {
            counter += 1
        }
    }
    lenghtString.append(String(counter))
    
    return lenghtString
}

lenghtCharacters(word: "ab")

