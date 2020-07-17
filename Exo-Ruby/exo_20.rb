puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
floors = gets.chomp.to_i

(floors+1).times do |i|
    i.times do
        print "#"
    end
    puts ""
end