require 'pry'
require 'rubygems'
require 'nokogiri'
require 'open-uri'

# Cette fonction renvoie le nom de la ville
puts "Chargement de la page Web..."
def get_ville

  ville_name_array = []
# Register URL du site web nécessaire
  page_url_region = "https://www.annuaire-des-mairies.com/val-d-oise"

  region_page = Nokogiri::HTML(open(page_url_region))

  # À partir du site Web, obtenez un tableau du nom de la ville, convertissez-le en chaîne, mettez-le dans le boîtier et remplacez "" par "-" si un espace
  return ville_name_array = region_page.xpath("//a[contains(@class, 'lientxt')]/text()").map {|x| x.to_s.downcase.gsub(" ", "-") }
end


# Cette fonction renvoie l'e-mail de chaque ville
def get_email (ville_names)

  ville_email_array = []

# Boucle sur chaque ville du tableau pour recevoir l'e-mail
  for n in 0...ville_names.length

# obtenir chaque lien vers le député
    page_url_ville = "http://www.annuaire-des-mairies.com/95/#{ville_names[n]}.html"

    ville_page = Nokogiri::HTML(open(page_url_ville))

# En cas de bug lors de la tentative d'obtention d'un e-mail
    begin

# Mettez chaque email dans un tableau "ville_email_array"
      ville_email_array << ville_page.xpath("//html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]/text()").to_s
    rescue => e

      ville_email_array << " "
    end
  end

# retourne le tableau de tous les e-mails
  return ville_email_array
end

# Fusionner le tableau ville avec le tableau e-mail
puts email_ville_result = Hash[get_ville.zip(get_email(get_ville))]
