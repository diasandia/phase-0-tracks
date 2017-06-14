#6.3 Attributes

class Santa
  def initialize (gender, eye_color, hair_color)
    puts "Initializing Santa instance ..."
    @gender = gender
    @eye_color = eye_color
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho,ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}"
  end

end

santas = []
biological_gender = ["female", "male", "decline to state", "why do you care"]
eye_color = ["blue", "green", "brown", "black"]
hair_color = ["brown", "black", "white", "pink", "blue"]

biological_gender.length.times do |i|
  santas << Santa.new(biological_gender[i], eye_color[i], hair_color[i])
end


# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end

p santas