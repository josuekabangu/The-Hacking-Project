class Menu

#graphique et boucle pour recommencer
	def initialize
	  puts "+----------+----------+----------+"
	  puts "|				 |"
	  puts "|	  JEU DE MORPION         |"
	  puts "|    				 |"
	  puts "+----------+----------+----------+"

	  puts "Comment t'appelles-tu ?"
	  print "> "
	  name1 = gets.chomp
	  puts "Et l'autre ?"
	  print "> "
	  name2 = gets.chomp
	  player1 = Player.new(name1)
	  player2 = Player.new(name2)
	end

	def repeat
	  puts "Veux tu recommencer ?(Oui = Y / Non = N)"
	  print "> "
	  reponse = gets.chomp
	end

end
