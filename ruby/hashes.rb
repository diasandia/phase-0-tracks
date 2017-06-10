#5.2 Arrays and Hashes

#PROGRAM REQUIREMENTS
# Allow interior designer to enter client details (name, age, number of children, pets, decor theme)

#  Set up empty hash
 client_info = {}

# Prompt designer for client's info
  puts "Please provide the client's name: "
  client_info["name"] = gets.chomp

  puts "Client's age:"
  client_info["age"] = gets.chomp.to_i

  puts "Number of children:"
  client_info["number_children"] = gets.chomp.to_i

  puts "Do you have a dog, cat, both, or none? (dog/cat/both/none)"
  pets = gets.chomp.downcase
    if pets == "dog" || pets == "cat" || pets == "both"
     client_info["pets"] = true
    elsif
      pets == "none"
      client_info["pets"] = false
    else
      puts "Invalid value. Do you have a dog, cat, both, or none? (dog/cat/both/none)"
      pets = gets.chomp.downcase
    end

  puts "Select a decor theme: farm/victorian/craftsman"
  decor_style = gets.chomp.downcase
    if decor_style == "farm"
     client_info["decor_style"] = "farm"
    elsif decor_style == "victorian"
     client_info["decor_style"] = "victorian"
    elsif decor_style == "craftsman"
     client_info["decor_style"] = "craftsman"
    else
      puts "invalid value.Select a decor style: farm/victorian/craftsman "
      decor_style = gets.chomp.downcase
    end

#Print hash out back to designer
p client_info

# Give the user opportunity to update key
puts "Are there any changes you would like to make to the client's details? (name of category/none)"
  client_change = gets.chomp.downcase
  if client_change == "none"
    puts "Great!"
  else
    puts "What would you like to change #{client_change} to?"
    change_to_make = gets.chomp
    client_info[client_change] = change_to_make
  end

#Print latest version of the hash
p client_info


# Pseudocode
# 1. Prompt designer for info
# 2. Convert user input to appropriate data type
# 3. Print hash back out to the screen when the designer answers all the questions
# 4. Give the user opportunity to update key (no loop needed)
#     A. If designer says "none" skip this
#     B. If designer says "decor_theme" (for example), your program should ask for a new value and update the
# 5. Print latest version of the hash and exit the program





