# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: 'Bella Appel', username: 'bellaappel', password: 'acting123')

Headshot.create(image_src: "https://i.postimg.cc/zX8NQfVZ/BACapture-One-Catalog0091.jpg", caption:"french new-wave", user_id: "1" )
Headshot.create(image_src:"https://i.postimg.cc/9fMBMrP9/2-CC9193-E-3420-41-F5-9-DFA-C5-EE32-E1-C2-D6.jpg", caption: "serious zoe" )