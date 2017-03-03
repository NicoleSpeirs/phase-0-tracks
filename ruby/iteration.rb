new_home = [
'living_room',
'bedroom',
'kitchen',
'office'
]
puts "Welcome to our new home!"

# iterate through array with each
puts "In our new place we have:"
new_home.each do |house_rooms|
  house_rooms
end

p new_home

# new_home.each {|house_rooms| puts house_rooms}
# iterate through array using map!
puts "Maybe a more exciting Welcome?"
new_home.map! do |happy_house_rooms|
  happy_house_rooms.upcase
end

p new_home

# iterate through hash using each
new_vet = {
  name: 'vet for all',
  address: '123 new vet road',
  service: 'save pets'
}
puts "Since we moved to a new house we found a new vet!"
 new_vet.each do |info|
  info
end
p new_vet

