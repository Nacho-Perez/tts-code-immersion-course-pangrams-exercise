NUM_LETTERS = 26

def is_pangram?(sentence)
    abc = {"a"=>0, "b"=>0, "c"=>0, "d"=>0, "e"=>0, "f"=>0, "g"=>0, "h"=>0, "i"=>0, "j"=>0, "k"=>0, "l"=>0, "m"=>0, "n"=>0, "o"=>0, "p"=>0, "q"=>0, "r"=>0, "s"=>0, "t"=>0, "u"=>0, "v"=>0, "w"=>0, "x"=>0, "y"=>0, "z"=>0}

#    sentence[/[a-zA-Z]+/] == sentence
    if (sentence.empty?) || (sentence.size < NUM_LETTERS)
        return false  
    else
        sentence = sentence.downcase

        i = 0
        while i < sentence.size
            char = check_accent(sentence[i])
            abc[char] = 1
            i += 1
        end
        
        if abc.values.include? 0
            return false
        else
            return true
        end
    end
end

def check_accent(letter)
    if (letter == "á") || (letter == "à") || (letter == "â")
        return "a"
    elsif (letter == "é") || (letter == "è") || (letter == "ê")
        return "e"
    elsif (letter == "í") || (letter == "ì") || (letter == "î")
        return "i"
    elsif (letter == "ó") || (letter == "ò") || (letter == "ô")
        return "o"
    elsif (letter == "ú") || (letter == "ù") || (letter == "û")
        return "u"
    else
        return letter
    end
end