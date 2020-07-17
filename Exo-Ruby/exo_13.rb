puts "Entrez votre année de naissance"
yearofbirth = gets.chomp.to_i
year = 2020 - yearofbirth 
year.times do |i|
    puts "#{yearofbirth}"
    yearofbirth += 1
end