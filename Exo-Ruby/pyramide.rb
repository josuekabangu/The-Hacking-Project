puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
floors = gets.chomp.to_i
n = 1
while n <= floors
  puts ("# " * n).rjust(10)
n += 1
end