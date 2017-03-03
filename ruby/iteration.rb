new_home = [
'living_room',
'bedroom',
'kitchen',
'office',
'bathroom'
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
  name: 'vet for all animals',
  address: '12345 new vet road',
  service: 'save pets'
}
puts "Since we moved to a new house we found a new vet!"
 new_vet.each do |info|
  info
end
p new_vet

p new_home
new_home.delete_if {|room| room.length > 7}
p new_home

p new_home
new_home.keep_if {|info| info.length > 6 }
p new_home

p new_vet
new_vet.reject! { |key,value| key.length > 4 }
p new_vet

# method that removes items until condition in the block evaluates to false
def foo array
  array.each_with_index do |room, index|
    if room.length <= 8
      array.delete_at(index)
    else
      return array
    end
  end
  array
end

test = ["12345", "1234567", "12345678", "123456789", "1234567890"]
foo(test)
p test
