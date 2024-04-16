# Lambda - Nameless method
# Can be created in 2 ways
# 1. lambda {|arg| work}
# 2. ->(arg) {work} => (->) Symbol represents lambda
square_lambda = lambda { |elem| elem ** 2 }
cube_lambda = ->(elem) { elem ** 3 }
nums = [11,22,33,44,55]

p nums.map(&square_lambda)
p nums.map(&cube_lambda)

# Differences between lambda and procs
# Lambda will throw an error if wrong number of arguments are passed
# When Lambda returns it passes control back to the calling method
# Proc will ignore extra arguments and pass nil to missing arguments
# When Proc returns it triggers a return from the calling method (similar behavior to a block)

my_proc = proc {|name, age| puts "Your name is #{name} and age is #{age}"}
my_lambda = lambda {|name, age| puts "Your name is #{name} and age is #{age}"}

def method_caller1(&code)
  code.call("Rishabh", 31)
end

def method_caller2(&code)
  code.call("Rishabh")
end

method_caller1(&my_proc)
method_caller2(&my_proc)                # Will call the proc with Rishabh and nil
puts

method_caller1(&my_lambda)
# method_caller2(&my_lambda)              # Will throw error (wrong number of arguments)
puts


my_proc = proc { return "Returning from PROC"}
my_lambda = lambda { return "Returning from Lambda"}

def execute(&logic)
  puts("Entering execution")
  puts logic.call
  puts("Ending execution")
end

execute(&my_lambda)                   # Will return to the caller method
execute(&my_proc)                     # Will return from function directly

# Go to classes.rb
