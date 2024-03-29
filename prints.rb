# print method is used to print on console without a next line character at end
# If you want next line you can add \n
print "Hello World\n"
print "Kamisama Onegai\n"


# puts method is used to print values with next line at end of each value

puts "Hello", "World"
puts 3.17

puts "5"                  # Output - 5
puts 5                    # Output - 5 -> Both show same in printing

# p is used to print but with more details (Inspect and print)
# printing a string using p will also show quotes to say its a string

p "Hello World"
p 3.17
p 5                       # Output - 5
p "5"                     # Output - "5" shows the difference between data getting printed
p "Hello World \n Hello"  # Will show \n as it is in output

# Inspection can also be done using .inspect on objects

puts "Hello World \n Hello".inspect         # This will be same as calling p
p "Hello World \n Hello"                    # Will print with double quotes
