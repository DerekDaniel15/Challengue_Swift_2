import UIKit

func CountLetters( text: String){
    var array: [Character] = Array(text)
    var res  = array.filter { lt in
        ValidateLetter(letter: String(lt))
    }
    var count: [Character: Int] = [:]
    for item in res {
        count[item] = (count[item] ?? 0) + 1 // count[item] es la propiedad(letra) su valor es el número
    }
    for (letter, value) in count {
        print(letter, " = ", value)
    }
}

func ValidateLetter(letter:String) ->Bool {
    var simbols: [String] = [",",";"," ",".","-"]
    let verify = simbols.filter { simbol in
        simbol == letter
    }
    return verify.count == 0 ? true : false
}

var greeting: String = "Hello, playground"
CountLetters(text: greeting)
