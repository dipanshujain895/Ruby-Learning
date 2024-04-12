# In Ruby, Blocks are procedures, collection of code.
# They can be passed to functions as arguments to be called

# Blocks can be created in 2 ways using {} , do and end
# use {} for 1 liner blocks, do-end for multi-line blocks

# num.times block -> It executes the block given number of times
# It keeps counter as it's first argument

# Blocks cannot exist without methods and are temporary constructs
# Unlike methods, They are used only once where they have been written and then disappear

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

arr1 = [1,2,3,4,5]
arr1.each { |value| p value}

# yield keyword - transfer control to attached block
# for now we are yeilding the control to the block once it completes we get it back
# It can be used to customize our functions with custom blocks
# Everytime you call yield it will execute the same block given again
# Last statement of the block is the return value of yield
#
def pass_control
  puts "Starting method"
  yield
  puts "Mid method"
  yield
  puts "Ending Method"
end

pass_control { puts "Inside block" }
puts

pass_control do
  puts "Hey this is a do-end block"
  puts "Completing this block"
end
puts

def who_am_i(name)
  puts "Hello My name is #{name}"
  adjective = yield
  puts "I am very #{adjective}"
end

who_am_i("rishabh") { "handsome" }
puts

# block_given? - checks if a block is provided to the method while calling it

def pass_control_on_condition(name)
  puts "Hello My Name is #{name}"
  if(block_given?)
    yield
  end
end

pass_control_on_condition("Dipanshu")
pass_control_on_condition("Rishabh") { puts "I am here" }
puts

# blocks can take parameters, you can pass them using yield(arg1,arg2,....)
def tell_my_name(name)
  puts "Let me think"
  yield(name)
end

tell_my_name("Kamisama") { |name| puts "Your name is #{name}"}

# Making our own each method using these

def custom_each(elements)
  if(elements.length == 0)
    return
  end

  for i in 0...elements.length
    yield(elements[i])
  end
  puts
end

custom_each([11,22,33,44,55]) { |elem| print(elem," ")}
puts

# For more information on blocks checkout procs.rb
