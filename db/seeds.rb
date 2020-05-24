# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

30.times do 
    Artist.create(
        first_name:Faker::Music.band, 
        last_name: " ", 
        genre:Faker::Music.genre, 
        hometown:Faker::Address.city
        )
end 

10.times do 
    List.create(
        name: Faker::Music.genre 
    )
end 

100.times do 
    Song.create(
        name: Faker::Music.album,
        time: "#{rand(5)}:#{rand(5)}#{rand(9)}",
        artist_id: rand(33),
        list_id: [1,2,3,4,5,6,7,8,9].sample
    )
end 
