# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#generateur des books et auteurs
require 'faker'

5.times do
  Book.create(author: Faker::Book.author, title: Faker::Book.title)
end

#Reinitialisation de la table email
Email.destroy_all

#Creation des emails: objects et body
require 'faker'
Email.destroy_all

5.times do
	email = Email.create(object: Faker::Book.title,
											body: Faker::Book.title,
                      read: false)
	email.save
	puts "Email créé"
end
