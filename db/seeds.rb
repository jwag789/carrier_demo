# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


3.times do
	Gallery.create(title: "My gallery")
end

Painting.create(title: "Cool painting", gallery_id: 1)
Painting.create(title: "Fun photo", gallery_id: 2)
Painting.create(title: "Red", gallery_id: 3)