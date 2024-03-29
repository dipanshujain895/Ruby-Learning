# Taking input in Ruby is done using gets() method
# gets method takes input from user in form of string and adds \n to the end
print "Enter your name: "
name = gets

p "Your Name is #{name}"

# You can strip the new line character from the input using chomp in chain

print "Enter your name again: "
name = gets.chomp

p "Your Name is #{name}"

print "Enter your Age: "
age = gets.chomp

p "Your Age is #{age}"
