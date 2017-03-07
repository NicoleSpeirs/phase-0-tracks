class Santa

  attr_reader :gender, :ethnicity, :age
  attr_accessor :name, :location

  def initialize(name, gender, ethnicity)
    @name = name
    @location = "The North Pole"
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = rand(0..140)
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "#{@name} That was a good #{cookie} cookie!"
  end

  def about
    puts "Name: #{@name}"
    puts "Location: #{@location}"
  end
end

# santa = Santa.new("Bob", "Male", "White")
# p santa.name
# santa.name = "Bobby"
# p santa.name


# # we make an array of names to build santas with
# names = ["Tammy", "Jasmine", "Sherry", "Ken", "Adi", "ZooZoo", "N/A"]
# genders = ["agender", "female", "bigender", "male", "female", "gender", "N/A"]
# ethnicities = ["black","Latino","white","Japanese","Prefer not to say","Mystical unicorn)","N/A" ]
# # we make an empty container for our santa collection
# santas = []

# puts "Iterating through names list to create santas ..."
# names.each_with_index do |name, index|
#   puts "Creating a santa named #{name} ..."
#   santas << Santa.new(name, genders[index], ethnicities[index], )
#   puts "There are now #{santas.length} Santa instances in the array"
#   puts "----"
# end

# type_of_cookies = ["chocolate chip", "oat meat", "coconut", "almond biscuit", "butter pecan", "Christmas" ,"macaroon"]

# puts "Testing each Santa instance in the array to make sure it can eat a cookie!..."
# santas.each do |santa|
#   santa.eat_milk_and_cookies(type_of_cookies.sample)
# end

santas = [ ]
names = ["Mike", "Dave", "Zoe", "Dhaniella", "Lam-Lan", "Foiz", "Smita", "Alex", "Robert", "Steven"]
ethnicities = ["White", "Hispanic", "Black", "Asian", "Pacific Islander", "Other"]
gender = ["male", "female", "other"]

100.times do
  santa = Santa.new(names.sample, gender.sample, ethnicities.sample)
  puts santa.name
  puts santa.gender
  puts santa.age
  santas << santa
end









