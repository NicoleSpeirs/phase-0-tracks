class Santa
  def initialize(name, gender, ethnicity)
    @name = name
    @location = "The North Pole"
    # puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "#{@name} That was a good #{cookie} cookie!"

  end

  def update_location(location)
    @location = location
  end

  def about
    puts "Name: #{@name}"
    puts "Location: #{@location}"
  end
end



# santa = Santa.new("Bob", "Male", "Asian")
# santa.update_location("New York")
# santa.about
# santa.speak
# santa.eat_milk_and_cookies("monster")
# # santa = Santa.new("Jack")

# # santa.speak
# # Jack.eat_milk_and_cookies("monster")
# santa = Santa.new("Jeff", "Male", "Italian")
# santa.update_location("Texas")
# santa.about
# santa.speak
# santa.eat_milk_and_cookies("yumsies")

# santas = []
# santas << Santa.new("Tammy","agender", "black")
# santas << Santa.new("Jasmine","female", "Latino")
# santas << Santa.new("Sherry","bigender", "white")
# santas << Santa.new("Ken","male", "Japanese")
# santas << Santa.new("Adi","female", "prefer not to say")
# santas << Santa.new("ZooZoo","gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A","N/A", "N/A")
# p santas

# we make an array of names to build santas with
names = ["Tammy", "Jasmine", "Sherry", "Ken", "Adi", "ZooZoo", "N/A"]
genders = ["agender", "female", "bigender", "male", "female", "gender", "N/A"]
ethnicities = ["black","Latino","white","Japanese","Prefer not to say","Mystical unicorn)","N/A" ]
# we make an empty container for our santa collection
santas = []

puts "Iterating through names list to create santas ..."
names.each_with_index do |name, index|
  puts "Creating a santa named #{name} ..."
  santas << Santa.new(name, genders[index], ethnicities[index], )
  puts "There are now #{santas.length} Santa instances in the array"
  puts "----"
end

type_of_cookies = ["chocolate chip", "oat meat", "coconut", "almond biscuit", "butter pecan", "Christmas" ,"macaroon"]

puts "Testing each Santa instance in the array to make sure it can eat a cookie!..."
santas.each do |santa|
  santa.eat_milk_and_cookies(type_of_cookies.sample)
end


