def echo(words)     #fonction qui retourne l'argument
    return words
end

def shout(chaine)   #fonction la chaine de caractere passé en argument, en majuscule
    return chaine.upcase
end

def repeat(chaine, times = 2)
    resultat=""
#    chaine = chaine +" "
    i = 0
    while i<times
        resultat = chaine+" " + resultat
        i+=1
    end
    return resultat.rstrip
end

def start_of_word(words,first)
    result = []
    for i in (0 ... first)
        result << words[i]
    end
    return result.join
end

def first_word(sentence)
    return sentence.split[0]
end


def islittleword(word)
    littlewords = ["and","the","on","in"]
    for i in (0...littlewords.size)
        if littlewords[i] == word
            return true
        end
    end
    return false
end

def titleize(sentence)
    words = sentence.split
    for i in (0...words.size)
        if islittleword(words[i])!=true
            words[i] = start_of_word(words[i],1).upcase + words[i][1...words[i].size]             
        elsif islittleword(words[i])==true && i==0
            words[i] = start_of_word(words[i],1).upcase + words[i][1...words[i].size]
        end
    end
    return words.join(" ")
end
