#5.2 Arrays and Hashes

#PROGRAM REQUIREMENTS
# Allow interior designer to enter client details (name, age, number of children, pets, decor theme)

#Set up hash
 client_info = {
    "name" => "",
    "age" => "",
    "number_children" => "",
    "pets" => "",
    "decor_style" => ""
}

# Prompt designer for client's info
  puts "Please provide the client's name: "
  client_info["name"] = gets.chomp

  puts "Client's age:"
  client_info["age"] = gets.chomp.to_i

  puts "Number of children"
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

puts " Is there anything you would like to update?"



### Pseudocode
# 1. Prompt designer for info
# 2. Convert user input to appropriate data type
# 3. Print hash back out to the screen when the designer answers all the questions
# 4. Give the user opportunity to update key (no loop needed)
    # A. If designer says "none" skip this
    # B. If designer says "decor_theme" (for example), your program should ask for a new value and update the :decor_theme key. (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.)
#5. Print latest version of the hash and exit the program

