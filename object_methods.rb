# Chaining methods - You can also chain methods to call another method on result of 1st

s = "Hello World"

val = s.upcase.length.next    # First make it upper, find length then get next integer
p val


a = 10
p a.next.next.next              # Output - 13

# Note - you always get a new integer object from next or succ or pred method
# Similarly with upcase and downcase you will get a new string object

# Conversion methods

# to_i -> convert Object to Integer
# If conversion cannot be done it will give 0 as default
# If String starts with a number it will give that number
a = "5"
b = a.to_i

p a.class
p b.class

c = "15 string"
d = "string 15"
puts c.to_i                   # Output - 15
puts d.to_i                   # Output - 0

# to_f -> Convert Object to Float
f = c.to_f
p "#{f}, #{f.class}"

# to_s -> Convert object to String
s = f.to_s
p "#{s}, #{s.class}"


# Check if object is nil
# 1. using ==
# 2. using .nil? - checks if the given object is nil or not

obj = "hello"
p obj == nil
p obj.nil?

obj = nil               # Make object nil to check

p obj == nil
p obj.nil?

# Bang methods
# They are methods that end with a ! (Exclamation/Bang)
# They perform some kind of mutation (a change)

# Example - .capitalize! - capitalizes the original string
word = "hello world"
word.capitalize!
p word
