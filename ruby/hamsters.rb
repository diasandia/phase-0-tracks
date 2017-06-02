hamster_name = ""
hamster_volume = 0
hamster_furcolor = ""
hamster_adoptable = ""
hamster_estage = nil

puts "What is the hamster's name?"
hamster_name=gets.chomp

puts "From 1 to 10 (10 being the loudest), what is the hamster's volume level?"
hamster_volume=gets.to_i
  while hamster_volume > 10
    puts "Please enter a number from 1 to 10"
    hamster_volume=gets.to_i
  end

puts "What is the hamster's fur color?"
hamster_furcolor=gets.chomp

puts "Is the hamster a good candidate for adoption? (yes/no)"
hamster_adoptable=gets.chomp
  hamster_adoptable.downcase!
  while hamster_adoptable !="yes" && hamster_adoptable !="no"
    puts "Please enter yes or no."
    hamster_adoptable=gets.chomp
  end

puts "What is the hamster's approximate age?"
hamster_estage=gets.to_i

puts "Adoption details for #{hamster_name} the hamster::"
puts "Volume level: #{hamster_volume}"
puts "Fur color: #{hamster_furcolor}"
puts "Adoptable: #{hamster_adoptable}"
puts "Estimate Age: #{hamster_estage}"
