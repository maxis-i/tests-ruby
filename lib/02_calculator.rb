# function addition
def add(a , b)
return a + b
end
#function subtract 
def subtract (a , b)
    return a - b
end

#somme dans le tableau
def sum(tableau)
    val = 0
    for i in (0 ... tableau.size)
        val = val + tableau[i]
    end
    return val
end
#function multiply
def multiply(a , b)
    return a * b
end 
#fonction puissance d'un nombre numA le nombre et numB est la puissance du nombre  
def power(numA , numB)
    #si la puissance = 0 le resultat est 1
    if numB == 0
        return 1
    end
    val = 1
    i = 0
#calcul du puissance
    for i in (1..numB)
        val = val * numA 
    end
    return val

end
#calcul la factorial du nombre donné
def factorial(num)
    start = 1
    #calcul du factorial
    for i in (1.. num)
        start = start * i
    end
    return start
end

