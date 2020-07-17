# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all # Remise à 0
City.destroy_all # Remise à 0
Gossip.destroy_all # Remise à 0
Tag.destroy_all # Remise à 0
GossipTag.destroy_all # Remise à 0
PrivateMessage.destroy_all # Remise à 0



10.times do # Création de 10 villes aléatoires avec des zip_code aléatoires
  City.create(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end

10.times do # Je définis 10 users aléatoirement etje lui affecte une des 10 villes créées
  User.create(first_name: ["Gérard", "Hervé", "Julia", "Mathilde", "Robert", "Rebecca", "Adrien", "Maxime", "Constance", "Juliette"].sample, last_name: ["Lopez", "Durand", "Bocata", "Pastore", "Villas", "Rodriguez", "Matthieu", "Latouche", "Fleur", "Amandine"].sample, description: ["Je suis un artiste Canadien", "Je suis un pompier mal luné", "Je suis un avocat sans saveur", "J'aime les brocolis demi-sec", "Je refuse de serrer la main le premier soir", "J'ai une folle envie de caramel", "J'ai toujours les jambes lourdes", "Je suis de mauvaise humeur", "J'ai un problème de foie", "J'ai envie de voler de mes propres ailes"].sample, email: Faker::Internet.email, age: Faker::Number.within(range: 18..63), city: City.all[rand(0..9)])
end

20.times do # Création de 20 gossips. Chaque gossip est attribué aléatoirement à un des users (un user peut ne pas avoir de gossip)
  Gossip.create(title: ["L’art de la méditation", "Sortez de l’illusion et devenez Dieu", "Les quatre accords toltèques", "L’alchimiste", "Les sept lois spirituelles du succès", "Le pouvoir du moment présent", "Conversation avec Dieu", "La prophétie des Andes", "Connais-toi toi-même", "La Vie des Maîtres", "Tristes tropiques", "Sur la télévision", "Les Héritiers", "Sociologie urbaine", "Sociologie de l'architecture", "Sociologie de la bourgeoisie", "La violence des riches", "La Marche pour l’Egalité", "Sorcières", "Pensée complexe", "Les lois naturelles de l'enfant", "L'amour et l'eau fraiche", "Les relations humaines"].sample, content: ["Le martyre, c’est le seul moyen de devenir célèbre quand on n’a pas de talent.", "Quand les hommes politiques ouvrent leur parapluie, leur niveau de précipitation à réformer devient nettement inférieur à la moyenne saisonnière.", "L'humanité est à un croisement: un chemin mène au désespoir, l'autre à l'extinction totale. Espérons que nous aurons la sagesse de savoir choisir.", "J'ai toujours préféré la folie des passions à la sagesse de l'indifférence.", "Accepter les dépendances que nous impose la nature, c'est la sagesse ; les aimer, c'est le bonheur.", "Etre sage, c'est éviter de se retrouver dans des situations qui feraient de la sagesse une nécessité.", "La bêtise a ceci de terrible qu'elle peut ressembler à la plus profonde sagesse.", "Le silence est le plus haut degré de la sagesse.", "Amour n'a pas de sagesse, ni colère de conseil.", "En politique, la sagesse est de ne point répondre aux questions. L'art, de ne pas se les laisser poser."].sample, user: User.all[rand(0..9)])
end

10.times do # Création de 10 tags aléatoires
  Tag.create(title: Faker::Hipster.words)
end

Gossip.all.each do |gossip| # Chaque gossip a aléatoirement 2 tags
  GossipTag.create(gossip: gossip, tag: Tag.all[rand(0..9)])
  GossipTag.create(gossip: gossip, tag: Tag.all[rand(0..9)])
end


10.times do # We create 10 messages that will be sent by 1 person and received by someone random. One person can receive several messages
  pm = PrivateMessage.create(content: Faker::Quote.most_interesting_man_in_the_world, sender: User.all[rand(0..9)], recipient: User.all[rand(0..9)])
end