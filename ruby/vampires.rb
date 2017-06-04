#4.4 Solo Challenge: Control Flow Practice

#Gather data on new employee


#ask for name
puts "What's your name?"
  name=gets.chomp

#ask for age and year of birth
puts "How old will you be in 2017? (ex. 96)"
  age=gets.to_i
   while age == 0
    puts "Invalid value. Please use a number. How old are you?"
    age=gets.to_i
  end

puts "What year were you born? (ex.1920)"
  year=gets.to_i
   while year == 0
    puts "Invalid value. Please use a number. What year were you born?"
    year=gets.to_i
  end

right_age=year + age

if right_age == 2017
  right_age = true
else
  right_age = false
end


#ask individual if they would like garlic bread
puts "Would you like garlic bread? (yes/no)"
  garlic=gets.chomp.downcase
  while garlic != "yes" && garlic != "no"
    puts "Invalid value. Please note yes or no. Would you like garlic bread?"
    garlic=gets.chomp
  end
  if garlic == "yes"
    garlic = true
  else
    garlic = false
  end

#ask if they would like to enroll in the company's health insurance
puts "Would you like to enroll in the company's health insurance? (yes/no)"
insurance=gets.chomp.downcase
  while insurance != "yes" && insurance != "no"
    puts "Invalid value. Please note yes or no. Would you like to enroll in the company's health insurance?"
    insurance=gets.chomp
  end
  if insurance== "yes"
    insurance= true
  else
    insurance= false
  end

case
when right_age && garlic && insurance
   vamp_stat= "probably not a vampire"
when right_age && garlic || insurance
   vamp_stat=  "probably a vampire"
when right_age || garlic || insurance
  vamp_stat=  "almost certainly a vampire"
when name== "Drake Cula" && "Tu Fang”"
  vamp_stat= "definitely a vampire"
else
  vamp_stat= "results inconclusive"
end

puts "Employee:: #{name} is #{vamp_stat}. Conclusion is based on following interview questions and answers - Age: #{age}; Year of birth: #{year}; Likes garlic bread: #{garlic}; Has health insurance: #{insurance}."