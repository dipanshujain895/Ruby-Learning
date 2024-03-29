# In ruby, you can debug your application by importing debug

# You can then use special methods in between your code
# debugger - pauses your code and start rdbg(ruby debugger) [BREAKPOINT]
# binding.break is same as debugger

# RDBG commands
# You can check value of any variables by writing their name
# step - (s) is used to execute current and then move to next line
# continue - (c) is used to move to next debug breakpoint
# info - (i) is used to see all the variables and other info about the current execution
#
require("debug")

puts "Hello World"

debugger

count = 0

while(count<10)
  puts count
  count += 1
end

binding.break

puts "Bye Bye"

5.times do |count|
  puts "At count #{count}"
end
