require 'open-uri'

Ingredient.destroy_all

data = open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read

JSON.parse(data)['drinks'].each do |drink|
  Ingredient.create!(name: drink['strIngredient1'])
end
