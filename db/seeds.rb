puts "Start seed"

User.destroy_all
Restaurant.destroy_all
Comment.destroy_all

puts "Create user"

User.create(email: "primaulia@gmail.com", password: "test123")

puts "Create restaurant"

10.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    user: User.first
  )
end

puts "Create comment for first restaurant"

3.times do
  Comment.create(
    content: 'lorem',
    restaurant: Restaurant.first,
    user: User.first
  )
end

puts "Seed done"
