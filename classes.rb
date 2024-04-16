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

# Access Modifier

# Public methods can be called by any object
# Private methods can be declared by writing them under private keyword
# Private methods can only be called by internal methods
# Protected methods can only be called by internal methods or objects of the same class

class SmartPhone
  attr_reader :username, :production_number
  attr_writer :password

  def initialize(username, password)
    @username = username
    @password = password
    @production_number = generate_random_number
  end

  def print_details
    puts "Username: #{username}"
    puts "Production_number: #{production_number}"
  end

  private

  def generate_random_number
    random_number = rand(100_000..999_999)
    another_random_number = rand(100_000..999_999)
    return "2024-#{random_number}-#{another_random_number}"
  end
end

smart_phone = SmartPhone.new("Rishabh","rish@123")
smart_phone.print_details
# smart_phone.generate_random_number            # this will give an error as method is private

class Car3
  def initialize(model, value)
    @model = model
    @value = value
  end

  def compare_car_value(car)
    self.value > car.value ? "#{self.model} is better": "#{car.model} is better"
  end

  protected
  def value
    @value
  end

  def model
    @model
  end
end


swift = Car3.new("Swift Dzire", 10_00_000)
alto = Car3.new("Alto", 3_00_000)
baleno = Car3.new("Baleno", 8_00_000)

# puts swift.value                                  # Will give error as it's protected
puts swift.compare_car_value(alto)
puts alto.compare_car_value(baleno)

# Class methods - Methods that are invoked on the class rather than an instance
# Class methods can be called without creating an instance/object of the class

# Class methods can be created using
# 1. ClassName.method - If class name changes need to change everywhere
# 2. self.method - Here self indicates the class name and will not require any changes

class Vehicle
  attr_accessor :wheels, :passengers

  def initialize(wheels, passengers)
    @wheels=wheels
    @passengers=passengers
  end

  # Class methods
  def Vehicle.hello
    puts "Hello, I am a class method"
  end
  def self.bye
    puts "Bye Bye - from class method"
  end

  def print_details
    puts "Wheels: #{wheels}"
    puts "Passengers: #{passengers}"
  end
end

Vehicle.hello
Vehicle.bye

v1 = Vehicle.new(4, 3)
v1.print_details
v1.hello                                  # 
