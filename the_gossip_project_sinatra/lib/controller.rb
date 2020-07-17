require 'gossip'

class ApplicationController < Sinatra::Base

#on passe une variable à notre view 
	get '/' do
	  erb :index, locals: {gossips: Gossip.all} #la methode locals, qui permet d'envoyer à notre fichier erb des variable
	end


	get '/gossips/new/' do
	  erb :new_gossip
	end
#recuperation de l'information soumis par l'utilisateur et enregistremennt le fichier csv
	post '/gossips/new/' do
  	   Gossip.new("#{params["gossip_author"]}", "#{params["gossip_content"]}").save
  	   redirect '/'#redirige l'utilisateur vers le route '/'(Accueil)
	end
#création d'un tableau de valeur qui sera associé à chaque gossip
    get 'gossips/:id' do
        erb :gossip_page, locals: {id:parms["id"].to_i, gossip: Gossip.find(params['id'].to_i)}
    end

end 