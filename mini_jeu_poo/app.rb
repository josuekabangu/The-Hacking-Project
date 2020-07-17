require 'bundler'
require 'pry'
require_relative './lib/game'
require_relative './lib/player'

def version_10
    puts "####################"
    puts "   # Le combat #"
    print "####################"
    puts ""
        player1 = Player.new("josiane")
        player2 = Player.new("jose")
        puts "Voici l'etat des joueurs"
        print player1.show_state
        print player2.show_state
	#boucle tant que les 2 personnes ont plus que 0 de vie
    while player1.life_points > 0 && player2.life_points > 0
		player1.attacks(player2) #attaque du premier joueur sur le deuxieme
		if player2.life_points>0 	#si le deuxieme joueur a survecu a l'attaque, il reposte
			player2.attacks(player1)
		end
        puts ""
        puts "Passons a la phase d'attaque"
		puts "Voici l'etat de nos joueurs : "	#affichage de la vie restante des joueurs apres le tour de combat
		player1.show_state
		player2.show_state
    end
    puts "============="
    puts " Combat fini"
    #si le 1er joueur n'a plus des points , le 2eme gagne 
    if player1.life_points == 0
        puts " #{player2.name} a gagné"
        puts "============="
    else
        puts " #{player2.name} a gagné"
        puts "============="
    end
end 

version_10


