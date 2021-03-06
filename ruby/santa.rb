#6.3 Attributes

class Santa
  attr_reader :ethnicity, :reindeer_ranking
  attr_accessor :gender, :age

    def initialize (gender, ethnicity, age)
      # puts "Initializing Santa instance ..."
      @gender = gender
      @ethnicity = ethnicity
      @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
      @age = age
    end

    def speak
      puts "Ho,ho, ho! Haaaappy holidays!"
    end

    def eat_milk_and_cookies(cookie_type)
      puts "That was a good #{cookie_type}"
    end

    def celebrate_birthday
      @age += 1
    end

    def get_mad_at(reindeer_name)
     @reindeer_ranking.delete(reindeer_name)
     @reindeer_ranking.push(reindeer_name)
    end
end

# GETTER METHODS for attributes: methods that wrap around a piece of data and return that piece of data. Make private data publicly available outside of class. **They are readable [Shortcut:: attr_reader :gender, :ethnicity, :reindeer_ranking. Declare attr_reader at the top. Think of attr_reader as saying write me a getter. They are great because other programmers will know what is readable or writable and know what kind of access they can have outside the class]

      # def gender
      #   @gender
      # end

      # def ethnicity
      #   @ethnicity
      # end

      # def reindeer_ranking
      #   @reindeer_ranking
      # end

# SETTER METHODS: Makes an attribute writable. FYI -depending on the class, you may not want to make something writable ex. location.  Allows for attributes to be set from outside the class instead of inside the class.[Shortcut:: attr_accessor :gender. Declare attr_accessor at the top. Think of attr_accessor as saying write me a setter method. Attr_accessor is good for BOTH reading and writing. FYI - there is also a attr_writer. If you use this, the class attribute will be writable but not readable, which wouldn't make too much sense. You are willing to let someone write an attribute from outside the class but not read it from outside the class.]

    # def gender=(new_gender)
    #   @gender = new_gender
    # end
#-------------------------------

#DRIVER CODE::

# santas = Santa.new("women","black", 44)
# puts "#Santa is a #{santas.ethnicity} #{santas.gender}."
# santas.get_mad_at("Vixen")
# santas.celebrate_birthday
# santas.gender = "Biologically female but identifies as male"
# puts "Santa's gender is: #{santas.gender}"

# Build many, many Santas - Pseudocode:
#   input (integer)
#   output (array)

def santa_generator(create_number_santas)
  santas =[]
  gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
  ethnicity = ["Black", "Latino", "Native American", "White", "Japanese-African"]
  age = (0..140).to_a

    create_number_santas.times do
      santas << Santa.new(gender.sample, ethnicity.sample, age.sample)
    end

    santas.each do |santa|
      puts "Santa is a #{santa.ethnicity}, #{santa.gender}, age #{santa.age}."
    end
end

#-------------------------------

# User Interface

puts "Welcome to SantaCon Simulator! Please provide a number of Santas to create."
  number_of_santas = gets.chomp.to_i

puts "Initializing SantaCon ..."
puts ""

puts "Here are your Santas:: "
santa_generator(number_of_santas)




# DSA NOTE
# gender.length.times do |i|
#   santas << Santa.new(gender[i], ethnicity[i])
# end



