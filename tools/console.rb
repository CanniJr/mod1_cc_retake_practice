# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

#recipes
fried_rice = Recipe.new("Fried Rice", "Rice stir-fried with soy sauce and others")
omelette = Recipe.new("Omelette", "Dish made from beaten eggs")

#restaurant owners
jen = RestaurantOwner.new("Jen", 35)
ford = RestaurantOwner.new("Ford", 48)

#restaurants
ark = Restaurant.new(jen, "Ark", 8)
blowfish = Restaurant.new(ford, "Blowfish", 9)

#menuitems
item1 = MenuItem.new(ark, fried_rice, 25)
item2 = MenuItem.new(blowfish, omelette, 15)




# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
