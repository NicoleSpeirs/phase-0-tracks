# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     "#{words}!!! :)"
#   end
# end

module Shout
  def yell_angrily(words)
    puts words + "!!!" + " :("
  end

  def yelling_happily(words)
    puts "#{words}!!! :)"
  end
end

class Person
  include Shout
end

class Lama
  include Shout
end

person = Person.new
person.yell_angrily("I am a hungry person")
lama = Lama.new
lama.yelling_happily("Hello I am a happy Lama")

