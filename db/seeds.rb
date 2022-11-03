# Seed of the gossip project

10.times do
end

10.times do
users = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Lorem.sentence(word_count: 15),
    email: Faker::Name.first_name+"@gmail.com",
    age: rand(1..99),
    city_id: rand(1..10),
    password:"Science101"
  )
end

10.times do
cities = City.create(
    name: Faker::Address.city,
    zip_code: rand(10000..99000)
  )
end

20.times do
gossips = Gossip.create(
    title: Faker::Lorem.sentence(word_count: 1),
    content: Faker::Lorem.sentence(word_count: 50),
    user_id: rand(1..10),
  )
end

puts 'Sucessfuly done'
