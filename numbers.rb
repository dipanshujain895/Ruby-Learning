# Integers
# Some big numbers can be also written using _ to separate multiple digits
# Example 999999999 can be written as 999_999_999
puts 3
puts -857
puts 999999999
puts 999_999_999

# Float

puts 3.14
puts -1.01

puts 12 / 5               # Integer division gives integer as output
puts 12.0 / 5             # Floating division gives float as output


# Integer Methods

puts 10.next            # gives the next integer which comes after the given number
puts -1.next            # Output - 0

puts 10.succ            # Output - 11 -> succ gives successor of given number same as next
puts 10.pred            # Output - 9 -> pred gives predecessor of given number

# puts 10.predec        # Not a real method it will raise NoMethod Error

puts 10.between? 5, 15   # Output - true -> between checks if number is in given range

# check predicate_methods.rb for for more info


# Float Methods

f = 11.12345
puts f.floor            # returns nearest Integer
puts f.ceil             # returns next integer
puts f.round            # returns rounded integer
puts f.round(2)         # returns rounded float to 2 decimal places

puts f.abs              # returns absolute number i.e +ve version if -ve number else same

# Arithematic and Logical Operators in Ruby are same as other languages 

puts 5 + 5
puts 5 - 5
puts 5 * 5
puts 5 / 5
puts 5 % 5


# Spaceship Operator (<=>)
# Returns -1, 0, 1, or nil
# Returns 1 if left is greater than right
# Returns -1 if right is greater than left
# Returns 0 if both are equal
# Returns nil if the values cannot be compared

p 5 <=> 5
p 10 <=> 5                  # Output 1 because left greater than right
p [1,2,3] <=> [1,2,3]       # Output 0 because both are equal
p [1,2,3] <=> [1,2,10]      # Output -1 because right is greater as 3rd elem is greater
p 10 <=> [1,2,3]            # Output nil because incomparable types

# Arrays are compared element by element


# Go to objects.rb