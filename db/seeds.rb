puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
pizza_gino = {
  name: "Pizza Gino",
  address: "pas loin",
  phone_number: "05 22 33 44 55",
  category: "italian"
}

paul = {
  name: "Paul",
  address: "à coté",
  phone_number: "05 55 33 99 55",
  category: "french"
}

ping_pong = {
  name: "Ping Pong",
  address: "En Chine",
  phone_number: "05 22 33 44 55",
  category: "chinese"
}

jap = {
  name: "Jap",
  address: "Poitier",
  phone_number: "05 34 33 28 55",
  category: "japanese"
}

michel_la_fritte = {
  name: "Michel la Fritte",
  address: "à côté",
  phone_number: "05 22 33 11 00",
  category: "belgian"
}

[pizza_gino, paul, ping_pong, jap, michel_la_fritte].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
