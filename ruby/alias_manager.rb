#5.5 Solo Challenge - Manipulating Strings

# RELEASE 0
# Get name from user
# Swap the first and last name
# Change all the vowels (a,e,i,o,u) to the next vowel
# Change the consonants to the next consonants
# Print new alias name

puts "What's your first name?"
  first_name = gets.chomp.downcase.split('')

puts "What's you last name?"
  last_name = gets.chomp.downcase.split('')

vowels = ['a', 'e', 'i', 'o','u']
consonants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']
index = 0

alias_first_name = first_name.map do |letters|
  if vowels.include? (letters)
      letters = vowels.rotate(1)[vowels.index(letters)]
  else consonants.include? (letters)
      letters = consonants.rotate(1)[consonants.index(letters)]
  end
end

alias_last_name = last_name.map do |letters|
  if vowels.include? (letters)
      letters = vowels.rotate(1)[vowels.index(letters)]
  else consonants.include? (letters)
      letters = consonants.rotate(1)[consonants.index(letters)]
  end
end

alias_name= "#{alias_last_name.join("").capitalize} #{alias_first_name.join("").capitalize}"

p alias_name




#--------------------------------------------------------------------------------------
# TO PRACTICE NESTING
# Get name from user
# Swap the first and last name
# Change all the vowels (a,e,i,o,u) to the next vowel
# Change the consonants to the next consonants
# Print new alias name

# vowels = ['a', 'e', 'i', 'o','u']
# consonants= ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']

# name = {}
#   puts "What's your first name"
#   name[:first] = gets.chomp.downcase
#   puts "What's your last name"
#   name[:last] = gets.chomp.downcase


# p name[:first][:letters] =




















