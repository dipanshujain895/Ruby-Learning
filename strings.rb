# Strings are created by double quotes and single quotes but they are different
# Double quoted strings allow string interpolation
# String interpolation is done using #{variable} within same string

# Single Quoted strings doesn't allow any type of escape sequence other than \'

s1 = "Hello"          # Double Quoted String
s2 = 'Hello'          # Single Quoted String
p s1, s2

s1 = "Hello\n"        # Escape Sequence works here
s2 = 'Hello\n'        # Escape Sequence doesnt work (Extra backslash added to disable it)
p s1,s2
p s1==s2

s3 = "Hello #{s1}"    # String interpolation works here
s4 = 'Hello #{s1}'    # String interpolation doesn't work

p s3, s4, s3==s4

# String interpolation can be escaped using \ (Backslash)
s5 = "Hello \#{s1}"
p s5

# Two strings can be same lexicographically but will have different ids
s6 = "Hello"
s7 = "Hello"

p s6, s7, s6 == s7
p s6.object_id, s7.object_id, s6.object_id == s7.object_id

# Strings concatenation
s8 = "Hello"
s9 = "World"

p s8 + s9             #Output - HelloWorld

# using concat() - updates the string by adding the given string at the end
s8.concat(s9)
p s8                  #Output - HelloWorld

# using prepend() - adds the given string to the start of the string
s8.prepend("My")
p s8                  #Output - MyHelloWorld

# using shovel operator (<<) - same as concat() method
s8 << "IsPrinted"
p s8                  #Output - MyHelloWorldIsPrinted

# Strings have length() and size() to get the length of string

s10 = "Hello World"
p "Size of #{s10} = #{s10.size}"
p "Length of #{s10} = #{s10.length}"

# upcase() - convert to uppercase
# downcase() - convert to lowercase
# swapcase() - convert lower to upper and vice versa
# capitalize - Make first letter capital and others smaller
s11 = "Hello World"
p s11.upcase
p s11.downcase
p s11.swapcase
p s11.capitalize

# str.include?(substr) -> checks if the substring exists in given string

p s11.include?("ello")
p s11.include? "worl"
# p s11.include? "ello","worl"      # Will give error as the method expects 1 arg
# p s11.include?                    # Will give error same as above


# Multi line strings in Ruby
# you can create multi-line strings in Ruby using (<<) followed by an identifier/symbol
# Which tells ruby where to start and end the multi-line string

# Example:
# <<ANYWORD
# your lines here
# ANYWORD

my_str = <<MULTILINES
This is first line
This is second line
MULTILINES

p my_str

# Strings can be compared with each other
p "A" < "Z"
p "hello" < "help"            # Checks the string lexicographically (each alphabet)

# Accessing characters

# 1. indexing -> s[index] -> Forward and backward indexing are allowed
# 2. str.slice(index) -> to slice character from a string, gives nil if index out of range

s12 = "Hello World"
p s12[6]                      # Output - W
p s12.slice(6)                # Output - W

# String slicing
# 1. indexing -> s[start, no_of_characters]
# 2. str.slice(start, no_of_characters)

p s12[2,6]
p s12.slice(2,6)              # Will start from 2 and get 6 charachters

# Updating strings
# 1. single index update
# 2. Slice Update - give start and no of characters to replace given string with
# For this case the new string doesnt need to be of same length as no of characters replaced

s12[4] = "ish"
p s12                         # Output - Hellish World

s12[2,5] = "lp"               # Will remove llish and put lp
p s12                         # Output - Help World

# Using String Insert
# insert(index, str) -> will insert the given string at the particular index in the string
s12.insert(0, "Please ")     # Will add "Please " at the start
p s12

# Check if string is empty
# 1. using ==
# 2. using length
# 3. using .empty?
s13 = ""

p s13 == ""
p s13.length == 0
p s13.empty?

# Reverse strings
# .reverse() -> returns a reversed string

s13 = "Hello world"
p s13.reverse
p s13                   # Doesnt change the original string


# Bang methods
# Major of the String methods have a bang equivalent of them (Update original object)
# .upcase!, .downcase!, .swapcase!, .reverse!

s13.reverse!
p s13                   # The original string got reversed

# Go to loops.rb


# Come here after going through arrays.rb

# String slicing using ranges
s14 = "Once upon a time in Mumbai"
p s14[2..8]
p s14.slice(2..8)
p s14.slice(20...-2)    # We can combine forward and backward index in ranges

# Update based on ranges

s14[12..15] = "season"
p s14

# .split() -> Splits a string based on a matching character by default takes space
# Returns an array of splitted strings
# if it cannot split returns array with same string
sentence = "Splits a string based on a matching character by default takes space"

p sentence.split              # Splits on space
p sentence.split("")          # Splits each character
p sentence.split("i")         # Splits on (i)
p sentence.split("\n")        # Splits on next line

# Iterating over string using .chars {}/.each_char {}
# .chars() -> Returns an array of all characters
# .each_char {} or .chars {} -> does the operation given in the block for each character in String


p sentence.chars()

sentence.each_char {|char| print char," "}
puts

sentence.chars {|char| print char," "}                # deprecated
puts

# .join() -> Merge String array into a single string (optionally using a delimiter/separator)
foods = ["Steak", "Vegetables", "Steak Burger", "Kale", "Tofu", "Tuna Steaks"]
p foods.join()            # Joins them together
p foods.join("#")         # Joins them together by adding # at end of each string

# .count() -> Count the frequency of a substring within a string\
p sentence.count("in")
p sentence.count("z")       # z is not in string so it will give 0

# .index(sub, start) -> returns the index of first occurence of the character/sub
# You can also give an index to start searching from
p sentence.index("l")                     # Returns 1
p sentence.index("ch")                    # Returns nil as elem not in array

p sentence.index("l", 10)                 # Start searching for l from 10 index

# .rindex(sub, start) -> returns the index of first occurence of the character/sub from the right
p sentence.rindex("l")

# .delete(characters) -> returns a new copy of the string after removing all occrurences of the given characters
p sentence.delete("i")

p sentence.delete("lt")

# Go to Symbols.rb then,
# Go to object_methods.rb again to resume your learning
