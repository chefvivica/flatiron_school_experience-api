Avatar.destroy_all 
User.destroy_all 

pictures = ['https://i.pinimg.com/originals/fa/c2/ab/fac2abb69ff8503d184be8d5417ea650.png', 'https://i.ya-webdesign.com/images/character-transparent-pixel-16.png', 'https://i.pinimg.com/originals/5f/b9/a7/5fb9a78a47f499a08cc32d890d4252ee.png', 'https://i.ya-webdesign.com/images/drawing-avatars-avatar-face-17.png','https://i.pinimg.com/originals/04/9e/c3/049ec39b121d26f40a9bf5620a821857.png', 'https://i.pinimg.com/originals/bb/14/66/bb146666c1e70354a6555c650375fbc8.png', 'https://i.pinimg.com/originals/70/d1/da/70d1da88428daf4610a70081ec8b28aa.png']


20.times do 
User.create(username: Faker::Name.unique.name)
end 

28.times do 
    Avatar.create(name: Faker::Name.name, image_url: pictures.sample, user_id: User.all.sample.id, turns: rand(1..6), skills: rand(1..10), points: rand(1..20))
end 

puts "create Avatar"
