#Attr Methods

# I worked on this challenge by myself.

# I spent [#] hours on this challenge.

class NameData

  attr_reader :name

  def initialize
    @name = "Jon"
  end

end


class Greetings

  def initialize
    @person = NameData.new
  end

  def hello
    puts "Hello #{@person.name}! So wonderful to see you today!"
  end

end

greet = Greetings.new
greet.hello


# Reflection
=begin

Release 1:

What are these methods doing?

initialize sets the instance variables to their initial values.
print_info puts out the age, name, and occupation on seperate lines.
what_is_age returns the age
change_my_age sets the age to a new one
what_is_name returns the name
change_my_name changes the name to a new one
what_is_occupation returns the occupation
change_my_occupation changes the occupation to a new one

How are they modifying or returning the value of instance variables?

They're either return them or assigning them to new values.

Release 2:

What changed between the last release and this release?

Instead of defining a method what_is_age, the attr_reader method is used for age.

What was replaced?

The what_is_age method.

Is this code simpler than the last?

Yes, it's shorter and easier to understand.

Release 3:

What changed between the last release and this release?

Instead of defining a method change_my_age, the attr_writer method is used for age.

What was replaced?

The change_my_age method.

Is this code simpler than the last?

Yes, it's shorter and easier to understand.

Release 4:

What changed between the last release and this release?

Combined attr_reader and attr_writer into one attr_accessor.

What was replaced?

attr_reader and attr_writer

Is this code simpler than the last?

Yes, it's the same thing, but in one declaration.

Release 5:

What is a reader method?

Assigns instance variable with the same name as the symbol. It allows people to read the value of the variable.

What is a writer method?

Assigns instance variable with the same name as the symbol. It allows people to assign the value of the variable.

What do the attr methods do for you?

Allow you to read or write to the variables, respectively.

Should you always use an accessor to cover your bases? Why or Why not?

No, sometimes you want to keep you data unchanged by others. This could be a debugging or security problem later on for more complex problems.

What is confusing to you about these methods?

The mixing of instance variables which have an "@" sign and the symbols with a ":" sign.

=end
