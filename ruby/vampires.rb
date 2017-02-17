print "What is your name?"
name = gets.chomp


print "How old are you?"
age = gets.chomp.to_i

print "What year were you born?"
year = gets.chomp.to_i

print "Should we order some garlic for you?"
garlic = gets.chomp

print "Would you like to enroll in the company's health insurance?"
insurance = gets.chomp


correct_age = 2017 - age == year

