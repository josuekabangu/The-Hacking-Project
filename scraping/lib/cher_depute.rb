require 'pry'
require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'byebug'
#obtention nom des deputes et enregistrement du site web
puts "Chargement de la page Web..."
def get_deputes_name

    deputes_name_array = []
  # Register URL du site web nécessaire
    page_url_deputes = "http://www2.assemblee-nationale.fr/deputes/liste/alphabetique"
  
    depute_page = Nokogiri::HTML(open(page_url_deputes))
  
  # À partir du site Web, obtenez un tableau du nom de la ville, convertissez-le en chaîne, mettez-le dans le boîtier et remplacez "" par "-" si un espace
    return deputes_name_array = depute_page.xpath("//*[contains(@id, 'deputes-list')]/div/ul/li/a/text()").map {|x| x.to_s }
  end
  
  # Cette fonction renvoie tous les liens vers l'email adjoint
  def get_deputes_link
  
    deputes_name_array = []
  # Register URL du site web nécessaire
    page_url_deputes = "http://www2.assemblee-nationale.fr/deputes/liste/alphabetique"
  
    depute_page = Nokogiri::HTML(open(page_url_deputes))
  
  # À partir du site Web, obtenez un tableau du nom de la ville, convertissez-le en chaîne, mettez-le dans le boîtier et remplacez "" par "-" si un espace
    return deputes_name_array = depute_page.xpath("//*[contains(@id, 'deputes-list')]/div/ul/li/a/@href").map {|x| x.to_s }
  end
  
  # Cette fonction renvoie tous les e-mails du député du site Web
  def get_deputes_email (deputes_names)
  
    deputes_email_array = []
  
  # Boucle sur chaque lien un e-mail get adjoint
  # Utilisez 10 pour éviter une latence remplacez 10 par deputes_names.length pour obtenir tous les hash
    for n in 0...10
  
  # obtenir chaque lien vers le député
      page_url_deputes = "http://www2.assemblee-nationale.fr/#{deputes_names[n]}.html"
  
  # Connectez-vous à la page
      depute_page = Nokogiri::HTML(open(page_url_deputes))
  
  # En cas de bug lors de la tentative d'obtention d'un e-mail
      begin
  
  # Mettez chaque email dans un tableau "ville_email_array"
        deputes_email_array << depute_page.xpath("//*[contains(@class, 'deputes-liste-attributs')]/dl/dt/dd/ul/li/a/text()").to_s
      rescue => e
  
          deputes_email_array << 
        end
    end
  
  # retourne le tableau des emails des députés
    return deputes_email_array
  end
  byebug
  # La fusion représente le tableau des noms avec le tableau des e-mails de remplacement
  puts email_ville_result = Hash[get_deputes_name.zip(get_deputes_email(get_deputes_link))]
  