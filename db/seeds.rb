# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

u = User.create(name: 'Emy', email: 'emy@vivi.fr', password: '11111111')

r1 = Recipe.create(name: 'cookies', preparation_time: '2', cooking_time: '1', description: 'coo
kies', public: true, user: u)

r2 = Recipe.create(name: 'lasagne', preparation_time: '2', cooking_time: '1', description: 'lasagne', public: true, user: u)

r3 = Recipe.create(name: 'macaronni', preparation_time: '2', cooking_time: '1', description: 'macaronni', public: false, user: u)

food = Food.create(name: 'pasta', user: u)
RecipeFood.create(quantity: 2, recipe: r2, food: food)

food = Food.create(name: 'salsa', user: u)
RecipeFood.create(quantity: 2, recipe: r2, food: food)

food = Food.create(name: 'cheeze', user: u)
RecipeFood.create(quantity: 2, recipe: r2, food: food)

f1 = Food.create(name: 'pate', user: u, measuring_unit: 500, price: 2 )
f2 = Food.create(name: 'salsa', user: u, measuring_unit: 500, price: 5 )

RecipeFood.create(quantity: 2, recipe: r3, food: f1)
RecipeFood.create(quantity: 2, recipe: r3, food: f2)

inv =  Inventory.create(name: myinv, user_id: 4)

if1 = InventoryFood.create(quantity: 1, inventory: inv, food_id: 6)
if2 = InventoryFood.create(quantity: 2, inventory: inv, food_id: 5)
if3 = InventoryFood.create(quantity: 0, inventory: inv, food_id: 4)
