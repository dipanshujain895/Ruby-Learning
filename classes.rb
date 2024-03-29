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
