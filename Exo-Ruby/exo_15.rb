puts "Entrez votre annee"
annee = gets.chomp.to_i
age = 0
while (annee <= 2020)
    puts "En l'an #{annee} vous aviez #{age} an"
    age += 1
    annee += 1
end
