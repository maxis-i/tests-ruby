def time_string(enter)
    minute = 0  #initialise minute en 0
    seconde = 0 #initialise seconde en 0
    heure = 0   #initialise heure en 0
    minute = (enter / 60) % 60  #conversion en heure:minute:seconde   
    heure = enter /3600 
    seconde = enter % 60
    if minute/10 <= 0
        minute = "0"+minute.to_s    #formatage de la minute
    end
    if seconde/10 <= 0
        seconde = "0"+seconde.to_s  #formatage de la minute
    end
    if heure/10 <= 0
        heure = "0"+heure.to_s  #formatage de l'heure
    end
    return "#{heure}:#{minute}:#{seconde}"
end

