puts "Entrez votre âge"
print "> "
ageAct = gets.chomp.to_i
age = ageAct / 2
ageAct.times do |i|
    if i+1 == age
        puts "#{i+1} years ago, you were half the age you are today"
    else
        puts "#{i+1} Years ago, you were #{ageAct-i-1}"
    end
end 