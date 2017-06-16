# 6.7 Solo Challenge: A Game Class

# Create a class a word-guessing game
  # input: ClassName
  # steps:
    #define the class
    #add an empty initialize method
  # output: Class

# One user can enter a word - Method to create a list of characters
  # input: word
  # steps:
    #break the word into characters
    #create an array for characters
  # output: array

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