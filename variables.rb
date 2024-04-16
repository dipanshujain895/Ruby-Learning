# In ruby everything is an object
# Variables in ruby holds the reference to the object

# There are 5 types of variables
# local variable (var)
# global variable ($var)
# instance variable (@var)
# class variable (@@var)
# constant (VAR)

x = 5
y = "Hello"

print x," ",y," ", x.object_id, " ", y.object_id, "\n"

# Values can be assigned to multiple variables together
# var1,var2,... = val1, val2,...

x, y, z = 11, 22, 33

puts "x = #{x}, y = #{y}, z = #{z}"

# Swapping values can be done similarly

x, y = y, x
puts "After Swapping"
puts "x = #{x}, y = #{y}"

# Constants are created using UPPERCASE variable names
# Their value can be changed but this behaviour is unaccepted
# Do not change value of constants
FIXED = 1.6
puts FIXED

FIXED = 1.7     # Will give warning as FIXED is already initialized
puts FIXED      # The value will be changed after warning


# Conditional Assignment to a variable
# Represented by ||=
# It assigns the variable the given value if it was nil at the time
# else it does nothing

x = nil
p x
x ||= 5         # Assigns the value to the variable since variable is nil
p x
x ||= 10        # Doesnt change the value as variable is not nil
p x


# Go to numbers.rb