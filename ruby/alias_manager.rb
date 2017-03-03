#swap the first and last name
# split the string to an array
# reverse the array
# join the array into a string

name = "Nicole Speirs"

p name.split.reverse.join(' ')
p name
#change the vowels
# name.swap

def scramble (sentence) #=> "Nicole Speirs"
  words = sentence.split(" ") #=> ["Nicole", "Speirs"]
  scrambled_sentence = [] #=> []
  words.each do |word| #=> "Nicole"
    # word.split #=> ["N", "i", "c", "o", "l", "e"]
    new_word = word.split("").map! do |letter| #=> "N"
      letter.next! #=> O
    end
    scrambled_sentence << new_word.join #=> ["O", "j", "b", "m", "f"] #=> "Ojbmf"
  end
  scrambled_sentence.join(" ") #=>  ["Ojbmf", "Tqfjst"]
  #=> "Ojbmf Tqfjst"
end

# p scramble(name)

# puts next_letter ("a")

puts "Welcome to Alias Spy Manager"
spy_names = []

 loop do
    puts "Please enter your name"
    puts "Type 'quit' to exit"
    input = gets.chomp


    if input == "quit"
      puts "Thank you for visiting! See you soon!"
      p spy_names.join(" ")
      break
    else
      fake_name = scramble(input)
      p fake_name
      spy_names << fake_name
    end
end



