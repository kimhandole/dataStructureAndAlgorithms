import Foundation

func isPalindrome(word: String) -> Bool {
    
    var oddChars: Set<Character> = []
    
    for char in word {
        if oddChars.contains(char) {
            oddChars.remove(char)
        } else {
            oddChars.insert(char)
        }
    }
    
    return oddChars.count <= 1
}


isPalindrome(word: "hhaann")
