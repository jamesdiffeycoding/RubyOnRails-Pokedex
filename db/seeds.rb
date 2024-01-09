# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Pokemonster.create(name: "Bulbasaur", pokemon_ID: 1)
Pokemonster.create(name: "Ivysaur", pokemon_ID: 2)
Pokemonster.create(name: "Venusaur", pokemon_ID: 3)
Pokemonster.create(name: "Charmander", pokemon_ID: 4)
Pokemonster.create(name: "Charmeleon", pokemon_ID: 5)
Pokemonster.create(name: "Charizard", pokemon_ID: 6)
Pokemonster.create(name: "Squirtle", pokemon_ID: 7)
Pokemonster.create(name: "Wartortle", pokemon_ID: 8)
Pokemonster.create(name: "Blastoise", pokemon_ID: 9)
Pokemonster.create(name: "Caterpie", pokemon_ID: 10)