require 'csv'

class Gossip
	attr_accessor :author, :content

	def initialize (author,content)
		@author = author
		@content = content
	end

	#La méthode save servira à enregistrer dans un base de donnée l'objet sur lequel elle est appliquée
	def save
	  CSV.open("./db/gossip.csv", "ab") do |csv|
	    csv << [@author, @content]
	  end
	end


	def self.all
      all_gossips = [] #on initialise un array vide
      
	  CSV.read("./db/gossip.csv").each do |csv_line| # crée un gossip avec les infos de la ligne
	    all_gossips << Gossip.new(csv_line[0], csv_line[1]) # all_gossips << gossip qui vient d'être créé
	  end
	  return all_gossips #retourne un tableau avec tous les gossips
    end

    def self.find(id)
        Gossip.all[id-1]
    end

end