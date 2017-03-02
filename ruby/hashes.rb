puts "Hello Interior Designer! Welcome to Designers of NYC"

puts "Please enter client name:"
name = gets.chomp

puts "Please enter client age:"
age = gets.chomp

puts "Please enter number of children (enter 0 for none):"
number_of_children = gets.chomp

puts "Please enter decor theme:"
decor_theme = gets.chomp

puts "Please enter your budget:"
budget = gets.chomp

puts "Are you a member of Designers of NYC? please type y/n"
member = gets.chomp
if member == "y"
  member = true
else
  member = false
end



# first, welcome the Designer
# ask for client for the following by puts-ing the question and gets.chomp the input
#   - name, string
#   - age, integer
#   - number_of_children, integer
#   - decor_theme, string
#   - budget, integer
#   - website_member, boolean

client = {
          name: name,
          age: age,
          number_of_children: number_of_children,
          decor_theme: decor_theme,
          budget: budget,
          member: member
        }

#puts client

# store the answers into a hash
# print the hash to the screen

loop do
  puts client
  puts "Would you like to update any information? enter 'none' if all information is correct."

  info = gets.chomp.to_sym

  if info == :none
    puts client
    puts "Thank you for using Designers of NYC!"
    break
  elsif client.has_key?(info)
    puts "Update your information:"
    client[info] = gets.chomp
  else
    puts "Unknown field. Please type name of entry you would like to correct!"
  end
end


# ask the user if they want to update any information,
# gets.chomp the users input and...
#   if user says "none", skip to next step.
#   if input matches any keys, update the value with another user input
#   if input doesn't match anything, puts an error and ask again
#
# print the hash once more and say goodbye!
