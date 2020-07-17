require 'bundler'
require 'pry'
class Player
# names and life points
    attr_accessor :name, :life_points 
    @@all_players = [] #array of all players

    def initialize(name)#creation attributs for player
        @name = name
        @life_points = 10
    end

    
    # affiche l'etat de chaque player, son nom et son niveau
    def show_state
        if @life_points > 0
            puts "#{@name} a #{@life_points} points de vie "
        else
            puts  "#{@name} est mort"
        end
    end
    
    #damage player
    def gets_damage(damages, attacked_player)
        attacked_player.life_points = attacked_player.life_points - damages
        if attacked_player.life_points <= 0
            puts "le jouer #{@name} a été tué !"
        end
    end

    #lancement attaque à l'adversaire
    def attacks(attacked_player)
        puts "#{name} attaque #{attacked_player.name}" 
        damages = compute_damage 
        gets_damage(damages, attacked_player)
        puts "Il lui inflige #{damages} points de dommages" 
    end

    def compute_damage
        return rand(1..6)
    end
end

class HumanPlayer < Player				#classe HumanPlayer qui herite de la classe Player

	attr_accessor :weapon_level			#ajoute une variable weapon_level

	

	def initialize(name)				
		@weapon_level = 1			#nouvelle variable dependant de hyumanplayser
		@life_points = 100			# nouvelle valeur de nombre de vie	
		super(name)
	end

	def show_state					#affiche le nom, la vie et le niveau d'arme d'un HumanPlayer
		puts "#{@name} a #{@life_points} points de vie et une arme de niveau #{@weapon_level}"
    end 
   #verification et choix des armes 
    def seach_weapon
        new_weapon_level = rand(1..6)
        if new_weapon_level > @weapon_level
            new_weapon_level = @weapon_level * new_weapon_level
            puts "Youhou ! elle est meilleure que ton arme actuelle : tu la prends."
        else new_weapon_level >= @weapon_level
            puts "M@*#$... elle n'est pas mieux que ton arme actuelle..."
        end
    end
    #recherche un pack de vie
    def search_health_pack
        new_life = rand(1..6)
        if new_life.between?(2,5) # valeur du pack entre 50 ou 80 points de vie
            puts "Bravo, tu as trouvé un pack de +50 points de vie !"
            if (@life_points + 50) > 100 #cumulation de pack vie <= à 100
                @life_points = 100
            else 
                @life_points = @life_points + 50
            end
            puts "Ta vie est maintenant de #{@life_points}"
        elsif new_life == 6
            puts "Waow, tu as trouvé un pack de +80 points de vie !"
            if (@life_points + 80) > 100 #cumulation de pack vie <= à 100
                @life_points = 100
            else
                @life_points = @life_points + 80
            end
            puts "Ta vie est maintenant de #{@life_points}"
        else
            puts "Tu n'as rien trouvé... "
        end
    end
    
    def compute_damage					
		return	rand(1..6) * @weapon_level
	end
end


            

