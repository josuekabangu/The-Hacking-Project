require 'bundler'
require 'pry'

require_relative 'lib/player'
require_relative 'lib/game'
#accueil du jeux
def welcome

    puts "------------------------------------------------"
	puts "|Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |"
	puts "|Le but du jeu est d'être le dernier survivant !|"
    puts "-------------------------------------------------"  
end

def version_20
    #creation des joueur
    puts "Entrez votre Prénom :"
    player3 = gets.chomp
    player = HumanPlayer.new(player3)
    player1 = Player.new("josiane")
    player2 = Player.new("jose")
    #affichage d'etat des joueur
    puts player.show_state
    print player1.show_state
    puts player2.show_state
    puts puts "Passons a la phase d'attaque"

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
def perform
    welcome
    version_20
end
perform
