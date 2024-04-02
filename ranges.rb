# range - sequence of numbers or letters in order
# represented by start..end and start...end
# closed range -> (start..end), here end is inclusive
# open range -> satrt...end, here end is exclusive

inclusive_nums = 1..10
exclusive_nums = 1...10

p inclusive_nums
puts inclusive_nums.class

# We can use first(num) and last(num) on the Ranges

# For just calling the function it will show same on last as the last in range is same
p "Inclusive Range: #{inclusive_nums.first} to #{inclusive_nums.last}"
p "Exclusive Range: #{exclusive_nums.first} to #{exclusive_nums.last}"

# When we try to fetch last 3 elements we see inclusive includes 10 and exclusive takes 9 as the last value
p "Inclusive Range: First 3 = #{inclusive_nums.first(3)}, Last 3 = #{inclusive_nums.last(3)}"
p "Exclusive Range: First 3 = #{exclusive_nums.first(3)}, Last 3 = #{exclusive_nums.last(3)}"

# When we try to get last 1 value, we see the difference we get last value in array form
p "Inclusive Range: Last Value - #{inclusive_nums.last(1)}"
p "Exclusive Range: Last Value -  #{exclusive_nums.last(1)}"

# Alphabetical range (uses ASCII)

upper_case_alphabets = "A".."Z"
lower_case_alphabets = "a".."z"

p upper_case_alphabets.first(5)
p lower_case_alphabets.first(5)

# Check if a value exists in the range
# 1. Using include?(val)
# 2. Using member?(val)
# 3. === operator -> checks if a range includes the given value

puts upper_case_alphabets.include?("B")
puts lower_case_alphabets.member?("z")          # Same as include?()
puts upper_case_alphabets === "Z"

# Convert ranges to array using .to_a
p upper_case_alphabets.class

upper_case_alphabets_array = upper_case_alphabets.to_a
p upper_case_alphabets_array
p upper_case_alphabets_array.class

# Check strings.rb, conditionals.rb, arrays.rb for more examples of usages of ranges
