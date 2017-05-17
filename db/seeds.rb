# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'fatsecret'
FatSecret.init(Settings.FATSECRET_KEY,Settings.FATSECRET_SECRET)

count = 0


recipe_hash = FatSecret.recipe(84411)
recipe = Recipe.new

nutrition_hash        = recipe["recipe"]["serving_sizes"]["serving"]

recipe.calories       = nutrition_hash["calories"]
recipe.fat            = nutrition_hash["fat"]
recipe.carbohydrates  = nutrition_hash["carbohydrate"]
recipe.saturated_fat  = nutrition_hash["saturated_fat"]
recipe.trans_fat      = nutrition_hash["trans_fat"]
recipe.cholesterol    = nutrition_hash["cholesterol"]
recipe.sodium         = nutrition_hash["sodium"]
recipe.sugar          = nutrition_hash["sugar"]
recipe.protein        = nutrition_hash["protein"]
recipe.trans_fat      = nutrition_hash["trans_fat"]
recipe.dietary_fiber  = nutrition_hash["fiber"]
recipe.vitamin_a      = nutrition_hash["vitamin_a"]
recipe.vitamin_c      = nutrition_hash["vitamin_c"]
recipe.calcium        = nutrition_hash["calcium"]
recipe.iron           = nutrition_hash["iron"]

pp
