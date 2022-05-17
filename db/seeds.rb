# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

u = User.create(name: 'Emy', email: 'emy@dodo.fr', password: '11111111')

r1 = Recipe.create(name: 'cookies', preparation_time: '2', cooking_time: '1', description: 'coo
kies', public: true, user: u)

r2 = Recipe.create(name: 'lasagne', preparation_time: '2', cooking_time: '1', description: 'lasagne', public: true, user: u)

r3 = Recipe.create(name: 'macaronni', preparation_time: '2', cooking_time: '1', description: 'macaronni', public: false, user: u)

food = Food.create(name: 'pasta', user: @user)
RecipeFood.create(quantity: 2, recipe: r2, food: food)

food = Food.create(name: 'salsa', user: @user)
RecipeFood.create(quantity: 2, recipe: r2, food: food)

food = Food.create(name: 'cheeze', user: @user)
RecipeFood.create(quantity: 2, recipe: r2, food: food)



