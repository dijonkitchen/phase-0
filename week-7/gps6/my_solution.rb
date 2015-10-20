# Virus Predictor

# I worked on this challenge Jon Chen with Michael.
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
# require_relative looks for required files in the current directory
# require would require the whole path to find the file
require_relative 'state_data'

class VirusPredictor

  # Sets initial values to variables for a new instance of the class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Calls the two methods in private section
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # Checks population density and makes number of deaths equal to population time some number rounded down
  # Then prints state and how many people will die in outbreak
  def predicted_deaths
    # predicted deaths is solely based on population density
    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end
    case @population_density
    when @population_density >= 200
        number_of_deaths = (@population * 0.4).floor
    when @population_density >= 150
        number_of_deaths = (@population * 0.3).floor
    when @population_density >= 100
        number_of_deaths = (@population * 0.2).floor
    when @population_density >= 50
        number_of_deaths = (@population * 0.1).floor
    else
        number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Checks for population density and depending on density, the greater the density, the less time it takes to spread in months
  # Prints that number in a number of months statement
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end
    case @population_density
    when @population_density >= 200
        speed += 0.5
    when @population_density >= 150
        speed += 1
    when @population_density >= 100
        speed += 1.5
    when @population_density >= 50
        speed += 2
    else
        speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

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

STATE_DATA.each{|state, data| inst_state = VirusPredictor.new(state, data[:population_density], data[:population])
inst_state.virus_effects}


#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?

The first level hash uses strings as keys and uses the hash rocket to make a new hash as it's value. The second level hash uses symbols for a cleaner declaration for population density and population.

What does require_relative do? How is it different from require?

require_relative looks for required files in the current directory; require would require the whole path to find the file

What are some ways to iterate through a hash?

You can use the each method or a loop like for, while, do, etc.

When refactoring virus_effects, what stood out to you about the variables, if anything?

Nothing really stood out at first, but later we realized that the instance variables didn't need to be there since it's referencing methods within the class that can use the instance variables themselves.

What concept did you most solidify in this challenge?

Iterating through a hash, case statements, and instance variables. 

=end
