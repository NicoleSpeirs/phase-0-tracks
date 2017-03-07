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

  def eat_milk_and_cookies(type_of_cookie)
    puts "That was a good #{type_of_cookie} cookie!"
  end

  def update_location(location)
    @location = location
  end

  def about
    puts "Name: #{@name}"
    puts "Location: #{@location}"
  end
end



santa = Santa.new("Bob", "Male", "Asian")
santa.update_location("New York")
santa.about
santa.speak
santa.eat_milk_and_cookies("monster")
# santa = Santa.new("Jack")

# santa.speak
# Jack.eat_milk_and_cookies("monster")
santa = Santa.new("Jeff", "Male", "Italian")
santa.update_location("Texas")
santa.about
santa.speak
santa.eat_milk_and_cookies("yumsies")




