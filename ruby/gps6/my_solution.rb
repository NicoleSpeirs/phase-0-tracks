# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#require relative allows you to connect files that are in the same directory.
#you can also use your current directory to require a path to other directories.
require_relative 'state_data'


class VirusPredictor

#sets parameters for variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#it's a method that calls two methods
  def virus_effects
    speed_of_spread
    predicted_deaths
  end

  private

#it's an instance method that accepts 3 arguments inside ( )
#its calculates density ans predicts the number of deaths based on population
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

#it's an instance method that accepts 2 arguments
#this starts with a speed of 0 and accelerates based on the population density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end


#======================================================================
#

STATE_DATA.each do |state_name, value |

state_virus_predictor = VirusPredictor.new(state_name,value[:population_density],value[:population])
state_virus_predictor.virus_effects
# state_virus_predictor.predicted_deaths
# puts "\n"

end







#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

#the different hush syntax in state_data.rb is THE hash rocket (=>) and the tailing symbol (:)
#
#require relative allows you to connect files that are in the same directory
# in this case require_relative connects my_solution.rb file to state_data.rb
# require is used to connect current directory to other directories but you
# will need to specify where the file is for example: ../ or ./
# we can use require './state_data' for this file and it will do the same as
# require_relative.
#
#the concept that i solidified the most from this challenge is the difference
# between require and require_relative as well as how to combine hashes using syntax
# I also clarified the tern constant variable.
