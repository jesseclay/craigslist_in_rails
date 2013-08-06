# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
categories = ["Property", "Travel", "Automobiles", "Fitness", "Casual Encounters"]

categories.each do |category|
  Category.create(category: category)
end

property = Category.find(1)
property.posts.create(title: "Selling my wife", email: "johndoe@gmail.com",
            content: "I gotta git rid of this woman. She doesn't even walk the dog anymore!! $20 obo.",
            price: 20, url: "www.localhost3000/randomgeneratedurl")


