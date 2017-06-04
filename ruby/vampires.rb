# #4.4 Solo Challenge: Control Flow Practice

# #Gather data on new employee

#ask how many employees will be in the process
puts "How many employees will be in the process?"
  employees=gets.chomp.to_i
  until employees == 0

#ask for name
puts "What's your name?"
  name=gets.chomp

#ask for age and year of birth
puts "How old will you be in 2017? (ex. 96)"
  age=gets.to_i
while age == 0
  puts "Invalid value. Please use a number. How old will you be in 2017?"
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
  right_age= false
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

#ask if they have any allergies
puts "Please list any allergies. Enter one allergy at a time. When finish type done."
  allergies=gets.chomp
while allergies!= "sunshine" && allergies!="done"
  puts "Any other allergies? Please enter one allergy at a time. When finish type done."
  allergies=gets.chomp
end

case
  when name== "Drake Cula" || name== "Tu Fang"
    vamp_stat= "definitely a vampire"
  when right_age==true && garlic==true && insurance==true && allergies!= "sunshine"
    vamp_stat= "probably not a vampire"
  when allergies== "sunshine" || [right_age==false && (garlic==false || insurance)]
     vamp_stat=  "probably a vampire"
  when right_age==false && garlic==false && insurance==false
    vamp_stat=  "almost certainly a vampire"
  else
    vamp_stat= "results are inconclusive"
end

puts "Employee:: #{name} - #{vamp_stat}. Conclusion is based on following interview questions and answers - Age: #{age}; Year of birth: #{year}; Likes garlic bread: #{garlic}; Has health insurance: #{insurance}."

employees -= 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."


