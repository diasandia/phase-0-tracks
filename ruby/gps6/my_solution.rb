# Virus Predictor

# I worked on this challenge with: [Alexis].
# We spent [2.5] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative is telling this program that it needs information in another file, in this case 'state_data'
# require_relative complements the builtin method require by allowing you to load a file that is relative to the file containing the require_relative statement.
#
require_relative 'state_data'
# require '/Users/alexis/Desktop/devbootcamp/phase-0-tracks/ruby/gps6/state_data'

class VirusPredictor

# Creates new instance of the class VirusPredictor
# Assigns state, population, and population_density instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end


# Calls predicted_deaths method and speed_of_spread method
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

private

# Calculates predicted_deaths based upon size of population_density.  Iterates through and multiplies population by factor depending upon population_density size. Rounds number down to integer.
# Prints estimation of how many deaths for specified state.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      @decimal = 0.4
    elsif @population_density >= 150
      @decimal =  0.3
    elsif @population_density >= 100
      @decimal = 0.2
    elsif @population_density >= 50
      @decimal = 0.1
    else
      @decimal = 0.05
    end

    number_of_deaths = (@population * @decimal).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end



# Calculates speed of spread based upon population_density.
# Prints how fast it expects disease to spread over period of months.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, population_info|
  state = VirusPredictor.new(state, population_info[:population_density], population_info[:population])
  state.virus_effects
end

# alabama = VirusPredictor.new("Alabama", # STATE_DATA["Alabama"][:population_density], # STATE_DATA["Alabama"][:population])
# alabama.virus_effects
#
# jersey = VirusPredictor.new("New Jersey", # STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects
#
# california = VirusPredictor.new("California", # STATE_DATA["California"][:population_density], # STATE_DATA["California"][:population])
# california.virus_effects
#
# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

#What are the differences between the two different hash syntaxes shown in the state_data file?
#---In the initial hash, the key starts in the implicit form with a string while in the value hash the key is a symbol.

# What does require_relative do? How is it different from require?
#---- Require_relative complements the built-in method of require by allowing you to load a file that is relative to the file containing the require_relative statement.

# What are some ways to iterate through a hash?
#----Two ways you can iterate through a hash is by using .map or converting the key's or values into an array and iterate as an array.

# What concept did you most solidify in this challenge?
#---I have a much better understanding of how to use nested data structures.