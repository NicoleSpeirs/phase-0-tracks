class Santa
  def initialize
    puts "Initializing Santa instance..."
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(type_of_cookie)
    puts "That was a good #{type_of_cookie} cookie!"
  end
end

bob = Santa.new
jack = Santa.new

bob.speak
jack.eat_milk_and_cookies("monster")




