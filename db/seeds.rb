# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(name: "rex")
User.create(name: "pu2")

Category.create(name: "food", icon: "source.unsplash.com/random/200x200")
Category.create(name: "drink", icon: "source.unsplash.com/random/200x200")

Purchase.create(user_id: 1, name: "MacDonald's nugget", amount: 100)
Purchase.create(user_id: 1, name: "Starbucks Cuppacino", amount: 50)

CategoryPurchase.create(category_id: 1, purchase_id: 1)
CategoryPurchase.create(category_id: 1, purchase_id: 2)