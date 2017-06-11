#5.3 Mandatory Pairing: Iteration

#RELEASE 0 - Write your own method that takes a block:
# def say_bye
#   puts "Bye Tom"
#   3.times {yield}
# end

# say_bye {puts "bye"}

##########################################
#RELEASE 1 - Do the thing
##########################################

# Declare an array and hash
singers = ["Ariana", "Justin", "Beyonce", "Taylor"]
upcase_singers = []

best_friends = {
  "Tom" =>  "Jerry",
  "JLO" => "Marc Anthony",
  "Harry" => "Ron"
}

# Iterate using .each && print data structures

puts "Original data:"
p singers
    singers.each do |singer|
      puts "#{singer} is a great singer"
    end
p singers


puts "Original data:"
p singers
    singers.each do |singer|
      upcase_singers << singer.upcase
    end
p upcase_singers


puts "Original data:"
p best_friends
    best_friends.each do |friend1, friend2|
      puts "#{friend1} and #{friend2} are good friends most of the time."
    end
p best_friends

# Iterate using .map/map! for array

puts "Original data:"
p singers
    singers.map! do |singer|
      singer.reverse
    end
p singers

puts "Original data:"
p singers
    alt_case_singers = singers.map do |singer|
      singer.swapcase
    end
p alt_case_singers


#####################################
#RELEASE  2
#####################################

letters = ["a", "b", "c", "d", "e"]

numbers = {
  "one" => 1,
  "two" => 2,
  "three" => 3,
  "four" => 4,
  "five" => 5,
}

# 1. Delete any item that meets a certain condition

letters.delete_if {|letter| letter == "c"}
p letters

numbers.delete_if {|word, digit| digit < 4}

# 2. Filter items that satisfy a certain condition

letters.keep_if {|letter| letters.index(letter) > 2}

numbers.keep_if {|word, digit| word[0] == "t"}

#3. Different method that filters items that satisfy a certain condition

letters.select! {|letter| letter > "b"}

numbers.select! {|word, digit| word[0] == "f"}

#4. Method that removes items from a data structure until the condition in the block evaluates to false, then stops

letters.drop_while {|letter| letter < "b"}

######################################
#Release 1 - Follow along .each

# #Arrays::
# letters = ["a", "b", "c", "d", "e"]
# new_letters = []

# puts "Original data:"
# p letters
# p new_letters

# #iterate through the array with .each
# letters.each do |letter|
#   new_letters << letter.next
# end


# puts "After .each call:"
# p letters
# p new_letters

# ########

# #Hashes::

# numbers = {1 => 'one', 2 => 'two', 3 => 'three'}

# puts "Original data:"
# p numbers

# #iterate through the array with .each

# numbers.each do |digit, word|
#   puts "#{digit} is spelled out as #{word}"
# end

#####################################
#Release 1 - Follow along .map (good for modifying content)

# #Arrays::

# letters = ["a", "b", "c", "d", "e"]

# puts "Original data:"
# p letters

# letters.map! do |letter|
#   letter.next
# end


# #iterate through the array with .map

# puts "After .map call:"
# p letters

