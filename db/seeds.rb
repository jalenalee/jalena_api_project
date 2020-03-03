# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Review.delete_all
Restaurant.delete_all

# # not sure if im doing this right 
# review_categories.each do |review_category|
#   # i think im missing review id 
#   review = Review.create(title: Faker::Movies::HitchhikersGuideToTheGalaxy.unique.review, content: Faker::Movies::HitchhikersGuideToTheGalaxy.unique.quote)
# end 

review = Review.create(title: Faker::Movies::HitchhikersGuideToTheGalaxy.unique.review, content: Faker::Movies::HitchhikersGuideToTheGalaxy.unique.quote)
end 

