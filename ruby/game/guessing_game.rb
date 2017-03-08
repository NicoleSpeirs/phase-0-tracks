
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
