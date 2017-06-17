# 6.7: A Game Class

#Create a class a word-guessing game
  # input: ClassName
  # steps:
  #   define the class
  #   add an empty initialize method
  # output: Class

# One user can enter a word - Method to create a list of characters
  # input: word
  # steps:
    #break the word into characters
    #create an array for characters
    #disguise characters
  # output: array

#  Method to mask the word
  # input: character list
  # steps:
    # disguise each character
  # output: masked array

#####character_count = character_list.count

class WordGame
attr_reader :word
attr_accessor :character_list,

  def initilize(word)
    @word = word
    @character_list = character_list
    # @guess_count = 0
    # @guess_character = guess_character
    # @masked_word = masked_word
  end

  def masked_word(word)
    @character_list = word.split(//)
    masked_character_list = character_list.map do |character| character.gsub(/./, "-")
    end
    return masked_character_list.join("")
  end

  def character_revel(guess_character)
    guess_character_list =[]
    guess_character_list << guess_character
    @character_list.include? guess_character
  end

  #user provides a character
  #create an empty array to store the guessed character
  #character must go through each character of character list
  #IF the character is there reveal it

  end

wordgame = WordGame.new
# p wordgame.initilize("hello")
p wordgame.masked_word("pizza")
p wordgame.character_revel("a")




# Another user attempts to guess the word - Method for finding and replacing characters
  # input: guess character
  # steps:
    #IF guess character is included in word
      #reveal the character
    #ELSE
      #Try again
    #create an array to store the guess characters
  # output: array

# Guesses are limited, related to the length of the word - Method for guess counter
  # input: word
  # steps:
    #count the word length
    #based on word length create guess counter
  # output: integer

# Repeated guesses do not count against the user - Method for checking duplicate characters & feedback on each guess
  # input: user character, guessed characters array
  # steps:
    #IF character in guessed character array
      # guess counter stays the same
    #Else
      # guess counter -1
  # output: array
  #***stack word length against guessed characters array for counter?***

#USER INTERFACE
# Player receives continual feedback on the current state of the word

# The user should get a congratulatory message if they win, and a taunting message if they lose.
  # input: character
  # steps:
    #if user wins
      # print congratulatory message
    #if user loses
      # print taunting message
  # output: message

# Driver code will handle user input and output

#PSEUDOCODE
# Create a class a word-guessing game
# One user can enter a word
# another user attempts to guess the word
# Guesses are limited, related to the length of the word
# Repeated guesses do not count against the user
# Player receives continual feedback on the current state of the word (Guess# left, words used, words matched)
# The user should get a congratulatory message if they win, and a taunting message if they lose.
