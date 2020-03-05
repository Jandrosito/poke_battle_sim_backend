# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client'
require 'json'

poke_name_data = RestClient.get 'https://pokeapi.co/api/v2/pokemon/?limit=100'

parsed_poke_name_data = JSON.parse(poke_name_data)["results"]

count = 0
poke_data = []

100.times {poke_data.push(RestClient.get "https://pokeapi.co/api/v2/pokemon/#{count += 1}")}

parsed_poke_data = poke_data.map{|data| JSON.parse(data)}

parsed_poke_moves_data = parsed_poke_data.map{|stuff| (stuff["moves"].sample(4).map{|data| JSON.parse(RestClient.get data["move"]["url"])})}

poke_names = parsed_poke_name_data.map{|data| data["name"]}

moves = parsed_poke_moves_data.map{|data| data.map{|stuff| {"name": stuff["name"], "power": stuff["power"], "accuracy": stuff["accuracy"], "priority": stuff["priority"],"type": stuff["type"]["name"], "move_type": stuff["damage_class"]["name"],"effect": stuff["effect_entries"][0]["effect"], "effect_chance": stuff["damage_class"]["effect_chance"]}}}

poke_type = parsed_poke_data.map{|stuff| stuff["types"][0]["type"]["name"]}

sprites = parsed_poke_data.map{|stuff| {"backimg": stuff['sprites']['back_default'], "frontimg": stuff['sprites']['front_default']}}

stats = parsed_poke_data.map{|stuff| stuff['stats'].map{|stat| {"name": stat["stat"]["name"], "value": stat['base_stat']}}}

poke_names.map{|name| Pokemon.create("name": name, "moves": moves[poke_names.index(name)], "poke_type": poke_type[poke_names.index(name)], "sprites": sprites[poke_names.index(name)], "stats": stats[poke_names.index(name)], "battlehp": stats[poke_names.index(name)][5][:value])}