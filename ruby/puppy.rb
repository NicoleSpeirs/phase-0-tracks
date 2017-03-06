# SPECIES ------------------------
# canine --class
#

# CHARACTERISTICS ----------------
# Body size: varies
# Friendly: varies
# Eye count: 2
# Leg Count: 4
# Name: varies
# Color: varies

# BEHAVIOR -----------------------
# Jump
# Sits
# Licks
# Bite

# class Puppy
# end

# zoe = Puppy.new
# toby = Puppy.new
# berry = Puppy.new
# toby.instance_of?(Puppy)

class Puppy

  def fetch(item)
    puts "I brought back the #{item}!"
    item
  end

  def speak(n=1)
    puts "Woof! " * n
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human_years)
    p human_years *7
  end
  def cookie_count(n=1)
    puts "Puppy just ate #{n} Cookies!!"
  end
end




zoe = Puppy.new
toby = Puppy.new

zoe.fetch("ball")
toby.fetch("green stinky toy")
toby.speak(5)
zoe.roll_over
toby.dog_years(13)
zoe.dog_years(4)
toby.cookie_count(100)
