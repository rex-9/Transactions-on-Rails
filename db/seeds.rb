# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(name: "rex", email: "rex@soul.com", password: "password")
User.create(name: "pu2", email: "pu@2.com", password: "password")

Category.create(name: "food", icon: "https://source.unsplash.com/random/100x100", author_id: 1)
Category.create(name: "drink", icon: "https://source.unsplash.com/random/100x100", author_id: 1)

Purchase.create(name: "MacDonald's nugget", amount: 100, author_id: 1)
Purchase.create(name: "Starbucks Cuppacino", amount: 50, author_id: 1)

CategoryPurchase.create(category_id: 1, purchase_id: 1)
CategoryPurchase.create(category_id: 1, purchase_id: 2)
CategoryPurchase.create(category_id: 2, purchase_id: 2)