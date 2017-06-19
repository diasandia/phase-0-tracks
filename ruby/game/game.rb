# 6.7: A Game Class

class Game

  attr_accessor :word, :character_list, :guess_count

  def initialize(word)
    @word = word
    @guessed_character = []
    @character_list = []
    @masked_character_list = []
    @guess_count = 0
    @game_over = false
  end

  def masked_word
    @character_list = @word.split(//)
    @masked_character_list = @character_list.map do |char| char = "-"
  end
    @masked_character_list.join
  end

  def guessed_chracters(guessed_character)
    @guess_character_list << @guessed_character
  end

  def character_reveal(guessed_character)
    if @character_list.include?(guessed_character)
      @character_list.each_index do |i|
        if @character_list[i] == guessed_character
         @masked_character_list.delete_at(i)
         @masked_character_list.insert(i, guessed_character)
        end
      end
    end
    @masked_character_list.join
  end

  def guess_count
    @guess_count = @word.length
  end

  def game_state
  if @masked_character_list == @word
    @game_over = true
    p "You win! The word is #{@word}!"
  if @guess_counter == @guess_count
    @game_over = true
    p "Sorry, you lose! The word was #{@word}."
  end
  end
end

end


#------------------------------------------
#Driver code

puts "Welcome to Guess the word! Player 1 - Please enter a word "
player_word=gets.chomp

puts "Player 2 - Please enter a letter."
guessed_character = gets.chomp.downcase

game = Game.new(player_word)

while game.guess_count != player_word.length
puts "Player 2 - Please enter a letter."
guessed_character = gets.chomp.downcase
  if game.game_state true
    break
  end
end

game.game_state





#-------------------------------
# Pseudocode::

# create a class a word-guessing game

# create a method that takes a word and creates an array
#   input: word (string)
#   steps:
#     break the word into characters
#     create an array for characters
#     disguise characters
#   output: array

# create a method that takes the created array and masks the word
#   input: array
#   steps:
#     use character list from previous method
#     change character list to attribute
#     disguise each character
#   output: array

#   Another user attempts to guess the word - Method for finding and replacing characters
#   input: string (guess character)
#   steps:
#     IF guess character is included in word
#       reveal the character
#     ELSE
#       Try again
#     create an array to store the guess characters
#   output: array

#   Guesses are limited, related to the length of the word - Method for guess counter
#   input: word
#   steps:
#     count the word length
#     based on word length create guess counter
#   output: integer

#   Guesses are limited, related to the length of the word - Method for guess counter
#   input: word
#   steps:
#     count the word length
#     based on word length create guess counter
#   output: integer

# Repeated guesses do not count against the user - Method for checking duplicate characters & feedback on each guess
#   input: user character, guessed characters array
#   steps:
#     IF character in guessed character array
#       guess counter stays the same
#     Else
#       guess counter -1
#   output: array
#   ***stack word length against guessed characters array for counter?***

# USER INTERFACE
# Player receives continual feedback on the current state of the word

# The user should get a congratulatory message if they win, and a taunting message if they lose.
#   input: character
#   steps:
#     if user wins
#       print congratulatory message
#     if user loses
#       print taunting message
#   output: message

# Driver code will handle user input and output

# Create a class a word-guessing game
# One user can enter a word
# another user attempts to guess the word
# Guesses are limited, related to the length of the word
# Repeated guesses do not count against the user
# Player receives continual feedback on the current state of the word (Guess# left, words used, words matched)
# The user should get a congratulatory message if they win, and a taunting message if they lose
