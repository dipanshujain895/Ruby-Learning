# you can do class declaration similar to python just don't forget to put an "end" to it
# Instance Variables are declared as @var_name
# Instance methods can be called inside other instance methods without using self
# Self refers to the current class object (current entity on which it's being used)
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

    def print_details
      puts "The class of the object is #{self.class}"
    end
end

greeter = Greeter.new()
p(greeter)
greeter.say_hi
greeter.say_bye
greeter.print_details
puts

greeter = Greeter.new("Rishab")
p greeter
greeter.say_hi
greeter.say_bye
greeter.print_details
puts

class Car1
  def initialize(model, brand, mileage, seats)
    @model = model
    @brand = brand
    @mileage = mileage
    @seats = seats
  end

  # Getters
  def model
    @model
  end

  def brand
    @brand
  end

  def mileage
    @mileage
  end

  def seats
    @seats
  end

  # Setters
  def model=(model)
    @model=model
  end

  def brand=(brand)
    @brand=brand
  end

  def mileage=(mileage)
    @mileage=mileage
  end

  def seats=(seats)
    @seats=seats
  end

  def print_details
    puts "Brand: #{brand}"
    puts "Model: #{model}"
    puts "Mileage: #{mileage}"
    puts "Seats: #{seats}"
  end
end

puts "Working for Car 1 with manual getter setters"


car1 = Car1.new("Swift", "Maruti", 25, 5)
car1.print_details
puts

car1.seats = 4
seats = car1.seats
puts "Updated No of seats in car: #{seats}"
puts

car1.print_details
puts

# Get automatic getters using attr_reader
# Get automatic setters using attr_writer

class Car2
    attr_reader :model, :brand, :mileage, :seats
    attr_writer :model, :brand, :mileage, :seats

    def initialize(model, brand, mileage, seats)
        @model = model
        @brand = brand
        @mileage = mileage
        @seats = seats
    end

    def print_details
        puts "Brand: #{brand}"
        puts "Model: #{model}"
        puts "Mileage: #{mileage}"
        puts "Seats: #{seats}"
    end
end

puts "Now working for Car 2 with automatic getter setters"

car2 = Car2.new("Swift", "Maruti", 25, 5)
car2.print_details
puts

car2.seats = 4
seats = car2.seats
puts "Updated No of seats in car: #{seats}"
puts

car2.print_details
puts

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
