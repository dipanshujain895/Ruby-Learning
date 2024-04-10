# you can do class declaration similar to python just don't forget to put an "end" to it

class Greeter
    def initialize(name="World")        # similar to __init__ of python
        @name=name
    end

    def say_hi
        puts("Hello #{@name}")
    end

    def say_bye
        puts("Bye bye, #{@name}")
    end
end

greeter = Greeter.new()
p(greeter)
greeter.say_hi
greeter.say_bye

greeter = Greeter.new("Rishab")
p greeter
greeter.say_hi
greeter.say_bye


# Get automatic getter setters using attr_accessor
class Student
    # attr_accessor :name, :age, :percentage

    def initialize(name, age, percentage)
        @name=name
        @age=age
        @percentage=percentage
    end

    def to_s()
        "
        Name: #{@name}
        Age: #{@age}
        Percentage: #{@percentage}
        "
    end

    def percentage
      @percentage
    end
end

# s3 = Student.new
# p s3
s1 = Student.new("Rishab", 21, 85)
s2 = Student.new("Abhishek",23, 88)

p s1
p s2

puts s1
puts s2

# p s1
# p s1.percentage
