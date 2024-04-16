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

# Go to inputs.rb

# Come here after learning strings.rb

# Bang methods
# They are methods that end with a ! (Exclamation/Bang)
# They perform some kind of mutation (a change)

# Example - .capitalize! - capitalizes the original string
word = "hello world"
word.capitalize!
p word

# .dup() and .clone() methods - used to make copy of an object
# .dup() -> Makes copy of object (if object is frozen make non frozen copy of it)
# .clone() -> Makes copy of object (if object is frozen copy also remains frozen)
a = [1, 2, 3, 4]
b = a.dup
c = a.clone

p "#{a}, #{a.object_id}"
p "#{b}, #{b.object_id}"                # Will return different id as new object is created
p "#{c}, #{c.object_id}"                # Will return different id as new object is created

# Same can be done for string objects

s1 = "Hello World"
s2 = s1.dup

s1.upcase!                            # Will update original string
p s1
p s2                                  # Changes only reflected in s1 and not in s2 because it was a copy

# .freeze() -> Make an object immutable (string and array etc)
# Note: Clones made from from frozen object will be frozen
# Duplicate made from frozen object will be non-frozen
s1.freeze
# s1.delete!("E")                       # Will give error "Cant modify frozen string"
p s1

# Go to hashes.rb
