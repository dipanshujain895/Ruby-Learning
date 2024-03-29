# In Ruby, Blocks are procedures, collection of code.
# They can be passed to functions as arguments to be called

# Blocks can be created in 2 ways using {} , do and end
# use {} for 1 liner blocks, do-end for multi-line blocks

# num.times block -> It executes the block given number of times
# It keeps counter as it's first argument

5.times { puts "I am learning Ruby"}

5.times do
  puts "I am inside do-end block"
end

# there can be variables accordingly inside a block
# Variables inside a block are declared using | var |

5.times { |count| puts "Hello #{count}" }

5.times do |count|
  puts "Hello #{count}"
end

#Output 0246810 using blocks

6.times do |count|
  print count*2
end

# upto and downto used to execute blocks from and to a value
# start.upto(end) , end.downto(start)
# step is used to go from start to end with steps
# start.step(end, stepValue)

5.upto(10) do |current|
  puts "Going up #{current}"
end

10.downto(5) do |current|
  puts "Countdown #{current}"
end

1.step(10, 2) do |current|
  puts "At Step #{current}"
end
