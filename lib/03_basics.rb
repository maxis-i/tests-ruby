def who_is_bigger(nb1,nb2,nb3)  #fonction qui retourne le plus grand nombre entre nb1, nb2, nb3
    max = nb1   #supposons que nb1 est le plus grand
    retour = "a is bigger"
    if nb1 == nil || nb2 == nil || nb3 == nil #si l'un des 3 variables contient nil alors la fonction retourne "nil detected"
        return "nil detected"   
    end
    if max<nb2  #si nb2 est > à nb1
        max = nb2   #alors nb2 devient le plus grand
        retour = "b is bigger"  #la variable retour "b is bigger" 
    end
    if max<nb3  #si nb3 est > à nb2 et à nb1
        max = nb3 #alors nb3 devient le plus grand
        retour = "c is bigger" #la variable retour retourne "c is bigger"  
    end
    return retour
end

def is_lta(caractere)
    alt = ['a','l','t'] # definir les caracteères a, l, t
    for i in (0 ... alt.size)   #boucler le tableau de caractere par rapport à la longueur du tableau contenant 'a', 'l', 't' 
        if alt[i] == caractere.downcase #le caractere est egale à 'l' ou à 'a' ou à 't' 
            return true
        end
    end
    return false
end

def reverse_upcase_noLTA(chaine)
    retour = [] #valeur à retourner
    for i in (0...chaine.size)  #boucler le tableau de caractere par rapport à la longueur du tableau contenant le chaine à entré
        if is_lta(chaine[chaine.size-i-1]) == false # si le caractere n'est pas l ou t ou a 
            retour << chaine[chaine.size-i-1]   #mettre le caractere dans ka cariable retour
        end
    end
    return retour.join.upcase   #joindre le tableau retour et mettre tous les caracteres en majuscule 
end

def array_42(tableau)   # fonction qui retourne true 
    #return tableau.class
    for i in (0 ... tableau.size)
        if tableau[i] == 42 # si le tableau passé en argument contient le nombre 42
            return true # retoune true
        end
    end
    return false    # si non retourne false
end

def flattened(tableau)  #diminue la dimension du tableau en argument
    retour = [] #la variable à retourner
    for i in (0 ... tableau.size)   #parcours du tableau
        if tableau[i].class.to_s == "Array" #la valeur du cellule du tableau est encore est tableau
            for j in (0 ... tableau[i].size)
                retour << tableau[i][j] #on developpe ce tableau pour que sa dimension diminue
            end
        else
            retour << tableau[i]    #si ce n'est pas un tableau on continue de concatener la valeur suivant à celle de la variable retour
        end
    end
    return retour
end

def multiplicatebytwo(tableau)  #fonction qui retourne la la multiplication de chaque cellule par 2
    for i in (0 ... tableau.size)
        tableau [i] = 2 * tableau[i]
    end
    return tableau
end



def removemultiplyofthree(tableau)  #fonction qui supprime les valeurs multiple de 3 dans le tableau
    retour = [] #valeur à retourner
    for i in (0 ... tableau.size)
        if tableau[i] % 3 != 0  #si le reste de la division par 3 est different de 0
            retour << tableau[i]    #alors on le met dans la variable retour
        end
    end
    return retour
end

def removeelement(tableau,index)    #fonction qui supprime un indice dans le tableau
    retour = []
    for i in (0...tableau.size) do
        if index != i
            retour << tableau[i]
        end
    end
    return retour
end

def existduplicate(tab) #recherche du doublon dans le tableau tab
    for i in (0...tab.size) do  #   parcourir le tableau depuis l'indice i = 0
        for j in (i+1...tab.size) do    #   comparer la valeur du tableau indice i et i+1 jusqu'a sa taille 
            if(tab[i]==tab[j])  #si il y a 2 valeurs egaux alors
                return [true,j] #on retourne true et l'indice du second pour qu'on puisse supprimer
            end
        end
    end
    return [false]   #si non, on retourne false (il n'y a plus de doublon) 
end

def removeduplicate(tableau)    #fonction qui enleve les doublons
    while existduplicate(tableau)[0] == true
        tableau = removeelement(tableau, existduplicate(tableau)[1])
    end
    return tableau
end

def sortbyasc(tableau)
    arraysize = tableau.size    #on recupere la taille du tableau
    i = 0   # On a besoin de i pour parcourir le tableau
    while i<arraysize   #tant que i<longueur du tableau
        while i+1<arraysize # et i+1 <arraysize
            if tableau[i]>tableau[i+1]  #   on met le plus grand à droite pour qu'on puisse avoir des tris croissants
                temp = tableau[i]
                tableau[i] = tableau[i+1]
                tableau[i+1] = temp
            end
            i+=1    #on incremente le i
        end
        arraysize-=1 #on decremente la longueur du tableau pour qu'on trie les inferieurs au plus grand du tableau
    end
    return tableau
end

def magic_array(tableau) 
    i = 0
    while i<tableau.size
        while tableau[i].class.to_s == "Array"
            tableau = flattened(tableau)
            i=0
        end
        i+=1      
    end
    tableau = multiplicatebytwo(tableau)    #multiplier par 2 tous les elements du tableau
    tableau = removemultiplyofthree(tableau)    #supprimer l'element multiple de 3 du tableau
    #duplicate
    tableau = removeduplicate(tableau)  #enlever les doublons
    #sortbyasc
    tableau = sortbyasc(tableau) #trier par ordre croissant
    return tableau
end