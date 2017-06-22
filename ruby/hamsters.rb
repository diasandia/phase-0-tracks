#4.3 Mandatory Pairing

#V2::

#--------------------------
#Driver Code

name=""
volume_level= 0
fur_color= ""
candidate_adoption=""
estimated_age= nil

puts "What is the hamster's name?"
p name=gets.chomp.capitalize

puts "What is the hamster's volume level from 1 to 10?"
p volume_level=gets.chomp.to_i
  until (1..10).include?(volume_level)
      puts "Invalid value. Please enter an integer from 1 to 10."
    p volume_level=gets.chomp.to_i
  end

puts "What is the fur color?"
fur_color = gets.chomp

puts "Is the hamster a good candidate for adoption?(yes/no)?"
candidate_adoption=gets.chomp.downcase
  until candidate_adoption == "yes" ||candidate_adoption == "no"
    puts "Invalid value. Is the hamster a good candidate for adoption?(yes/no)?"
    candidate_adoption=gets.chomp.downcase
  end

puts "What is the hamsters estimated age?"
estimated_age = gets.chomp
  if estimated_age == ""
    estimated_age = "Unknown"
  end

puts "---------------------------"
puts ""
puts "The hamster's name is #{name}; Volume Level: #{volume_level}; Fur Color: #{fur_color}, Estimated Age: #{estimated_age}, Candidate for Adoption: #{candidate_adoption}."












#Driver Code



















#========================================
# V1

# hamster_name = ""
# hamster_volume = 0
# hamster_furcolor = ""
# hamster_adoptable = ""
# hamster_estage = nil

# puts "What is the hamster's name?"
# hamster_name=gets.chomp

# puts "From 1 to 10 (10 being the loudest), what is the hamster's volume level?"
# hamster_volume=gets.to_i
#   while hamster_volume > 10
#     puts "Please enter a number from 1 to 10"
#     hamster_volume=gets.to_i
#   end

# puts "What is the hamster's fur color?"
# hamster_furcolor=gets.chomp

# puts "Is the hamster a good candidate for adoption? (yes/no)"
# hamster_adoptable=gets.chomp
#   hamster_adoptable.downcase!
#   while hamster_adoptable !="yes" && hamster_adoptable !="no"
#     puts "Please enter yes or no."
#     hamster_adoptable=gets.chomp
#   end

# puts "What is the hamster's approximate age?"
# hamster_estage=gets.to_i

# puts "Adoption details for #{hamster_name} the hamster::"
# puts "Volume level: #{hamster_volume}"
# puts "Fur color: #{hamster_furcolor}"
# puts "Adoptable: #{hamster_adoptable}"
# puts "Estimate Age: #{hamster_estage}"
