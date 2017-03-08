
# * admin is prompted for a word
# * word is saved to the secret_phrase variable
# * create an empty guesses array
# * create a string with (“_" * secret_phrase.length)
# * strikes = 0
# * until strikes == secret_phrase.length
#     * check if game is won
#         * check if all letters have been filled
#         * if so, return congratulations!
#         * return to break out of program
#     * prompt user for a letter
#     * if letter exists in guesses
#         * tell user he’s guessed that letter already
#         * skip this iteration
#     * iterate over secret_phrase
#     * if secret_phrases letter == users_guess
#         * replace string with letter
#         * set correct_guess to true
#     * if correct_guess == false
#         * strikes += 1
# * Laugh at users misfortune if they fail to guess correctly


class GuessingGame
  attr_reader :is_over, :phrase, :won

  def initialize(secret_phrase)
    @secret_phrase = secret_phrase.downcase
    @phrase = "_" * secret_phrase.length
    @guesses = []
    @strikes = 0
    @won = false
    @is_over = false
  end

  def check_phrase
    if !@phrase.include?("_")
      @is_over = true
      @won = true
    end

    if @strikes >= @secret_phrase.length
      @is_over = true
    end
  end

  def guess(input)
    if @guesses.include?(input)
      puts "You've already guessed this letter!"
      return
    end
    @guesses << input
    correct = false
    @secret_phrase.split("").each_with_index do |letter, index|
      if letter == input
        @phrase[index] = letter
        correct = true
      end
    end

    if correct
      puts "You got it right!"
    else
      @strikes += 1
      puts "*buzz* WRONG!!!"
      puts "#{@strikes} wrong answers!"
    end
    check_phrase
  end
end

game = GuessingGame.new("Unicorn")

until game.is_over
  puts "The puzzle is #{game.phrase}"
  puts "Guess a letter..."
  input = gets.chomp
  game.guess(input)
end

if game.won
  puts "You are the winner! Congratulations!"
else
  puts "HAHAHAHAHAHA, You are the weakest link! Goodbye!"
end

