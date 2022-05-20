# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


## ALLY -----------

ally = User.create(name: 'Ally', email: 'ally@recipe.com', password: '11111111')
inventory_ally =  Inventory.create(name: "inventory for ally", user: ally)

recipe_ally_1 = Recipe.create(name: 'Apple Pie', preparation_time: '20 min', cooking_time: '45 min', description: 'I remember coming home sullen one day because we d lost a softball game. Grandma, in her wisdom, suggested, "Maybe a slice of my homemade apple pie will make you feel better." One bite, and Grandma was right. If you want to learn how to make homemade apple pie filling, this is really the only recipe you need. —Maggie Greene, Granite Falls, Washington', public: true, user: ally)
recipe_ally_2 = Recipe.create(name: 'Puff Pastry Apple Strudel', preparation_time: '30 min', cooking_time: '25 min', description: 'This puff pastry apple strudel is such a fun recipe. It can be served alone or with a side salad. Different types of cheese, like goat, feta or jack, can be used in this dish. —Donna-Marie Ryan, Topsfield, Massachusetts', public: true, user: ally)
recipe_ally_3 = Recipe.create(name: 'Homemade Air-Fryer Churros', preparation_time: '15 min', cooking_time: '15 min', description: 'Serve these cinnamon-sugar air-fryer churros fresh and hot with a cup of coffee or hot chocolate. They re sure to become a family favorite! —Taste of Home Test Kitchen', public: false, user: ally)

# https://www.tasteofhome.com/recipes/apple-pie/
food= Food.create(name: 'Dough for double-crust pie',measuring_unit: 'g', price: 3, user: ally)
RecipeFood.create(quantity: 300, recipe: recipe_ally_1, food: food)
InventoryFood.create(quantity: 1000, inventory: inventory_ally, food: food)

food= Food.create(name: 'Sugar', measuring_unit: 'g', price: 1,user: ally)
RecipeFood.create(quantity: 300, recipe: recipe_ally_1, food: food)
InventoryFood.create(quantity: 1000, inventory: inventory_ally, food: food)

food= Food.create(name: 'Brown sugar',measuring_unit: 'g', price: 2, user: ally)
RecipeFood.create(quantity: 300, recipe: recipe_ally_1, food: food)
InventoryFood.create(quantity: 1000, inventory: inventory_ally, food: food)

food= Food.create(name: 'Flour', measuring_unit: 'g', price: 1,user: ally)
RecipeFood.create(quantity: 250, recipe: recipe_ally_1, food: food)
InventoryFood.create(quantity: 1000, inventory: inventory_ally, food: food)

food= Food.create(name: 'Cinnamon',measuring_unit: 'g', price: 10, user: ally)
RecipeFood.create(quantity: 10, recipe: recipe_ally_1, food: food)
InventoryFood.create(quantity: 1000, inventory: inventory_ally, food: food)

food= Food.create(name: 'Ginger', measuring_unit: 'g', price: 8, user: ally)
RecipeFood.create(quantity: 30, recipe: recipe_ally_1, food: food)
InventoryFood.create(quantity: 1000, inventory: inventory_ally, food: food)

food= Food.create(name: 'Nutmeg',measuring_unit: 'g', price: 7, user: ally)
RecipeFood.create(quantity: 10, recipe: recipe_ally_1, food: food)
InventoryFood.create(quantity: 1000, inventory: inventory_ally, food: food)

apple= Food.create(name: 'Apple',measuring_unit: 'g', price: 4, user: ally)
RecipeFood.create(quantity: 100, recipe: recipe_ally_1, food: apple)
InventoryFood.create(quantity: 1000, inventory: inventory_ally, food: apple)

food= Food.create(name: 'Lemon juice',measuring_unit: 'g', price: 2, user: ally)
RecipeFood.create(quantity: 100, recipe: recipe_ally_1, food: food)
InventoryFood.create(quantity: 1000, inventory: inventory_ally, food: food)

butter= Food.create(name: 'Butter',measuring_unit: 'g', price: 6, user: ally)
RecipeFood.create(quantity: 500, recipe: recipe_ally_1, food: butter)
InventoryFood.create(quantity: 1000, inventory: inventory_ally, food: butter)

egg= Food.create(name: 'Egg white',measuring_unit: 'g', price: 3, user: ally)
RecipeFood.create(quantity: 50, recipe: recipe_ally_1, food: egg)
InventoryFood.create(quantity: 1000, inventory: inventory_ally, food: egg)


# https://www.tasteofhome.com/recipes/puff-pastry-apple-strudel/
RecipeFood.create(quantity: 500, recipe: recipe_ally_2, food: butter)

food= Food.create(name: 'Onions',measuring_unit: 'g', price: 3, user: ally)
RecipeFood.create(quantity: 500, recipe: recipe_ally_2, food: food)

RecipeFood.create(quantity: 500, recipe: recipe_ally_2, food: apple)

food= Food.create(name: 'Walnuts',measuring_unit: 'g', price: 3, user: ally)
RecipeFood.create(quantity: 500, recipe: recipe_ally_2, food: food)

food= Food.create(name: 'Honey',measuring_unit: 'g', price: 33, user: ally)
RecipeFood.create(quantity: 100, recipe: recipe_ally_2, food: food)

food= Food.create(name: 'Salt',measuring_unit: 'g', price: 10, user: ally)
RecipeFood.create(quantity: 100, recipe: recipe_ally_2, food: food)

food= Food.create(name: 'pepper',measuring_unit: 'g', price: 100, user: ally)
RecipeFood.create(quantity: 100, recipe: recipe_ally_2, food: food)

RecipeFood.create(quantity: 50, recipe: recipe_ally_2, food: egg)


# https://www.tasteofhome.com/recipes/homemade-air-fryer-churros/

food= Food.create(name: 'Milk',measuring_unit: 'g', price: 100, user: ally)
RecipeFood.create(quantity: 100, recipe: recipe_ally_3, food: food)

# ABU ----

abu = User.create(name: 'Abu', email: 'abu@recipe.com', password: '11111111')
inventory_abu =  Inventory.create(name: "inventory for ally", user: ally)


# https://www.tasteofhome.com/recipes/double-chocolate-pumpkin-bread/
recipe_abu_1 = Recipe.create(name: 'Double Chocolate Pumpkin Bread', preparation_time: '25 min', cooking_time: '70 min', description: 'This double chocolate pumpkin bread is a favorite. It s nice and moist, and it actually gets better as it sits! It freezes well, too. —Tami Malan, Draper, Utah', public: true, user: abu)

food= Food.create(name: 'Sugar', measuring_unit: 'g', price: 1,user: abu)
RecipeFood.create(quantity: 300, recipe: recipe_abu_1, food: food)
InventoryFood.create(quantity: 1000, inventory: inventory_abu, food: food)

food= Food.create(name: 'Brown sugar',measuring_unit: 'g', price: 2, user: abu)
RecipeFood.create(quantity: 300, recipe: recipe_abu_1, food: food)
InventoryFood.create(quantity: 1000, inventory: inventory_abu, food: food)

food= Food.create(name: 'Flour', measuring_unit: 'g', price: 1,user: abu)
RecipeFood.create(quantity: 500, recipe: recipe_abu_1, food: food)
InventoryFood.create(quantity: 1000, inventory: inventory_abu, food: food)

butter=Food.create(name: 'Butter',measuring_unit: 'g', price: 6, user: abu)
RecipeFood.create(quantity: 500, recipe: recipe_abu_1, food: butter)
InventoryFood.create(quantity: 1000, inventory: inventory_abu, food: butter)

egg= Food.create(name: 'Egg white',measuring_unit: 'g', price: 3, user: abu)
RecipeFood.create(quantity: 50, recipe: recipe_abu_1, food: egg)
InventoryFood.create(quantity: 1000, inventory: inventory_abu, food: egg)

