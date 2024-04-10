# def used to define functions and end used to end function definition
# default values for arguments can be provided
# The function can be called with or without parantheses accordingly with their arguments
# To provide any number of arguments to a function we can use *arg in arguments

def printHello(name="World")
    puts("Hello #{name}")
end

printHello
printHello "Dipanshu"
printHello("Rishab")

def printAll(*args)
    p args, args.is_a?(Array)               # args passed here will become an array
    puts args.length                        # getting length of arguments array

    for i in 0...args.length                # Running loop over array
        puts "Value #{i} = #{args[i]}"
    end
end

printAll("Dipanshu", "Rishab", "Pragati", "Virendra")

# In ruby, output of the last line of a function is also it's returned value

def sum_with_return(a,b)
  return a + b
end

def sum_without_return(a,b)
  a + b                       # Ruby automatically takes the output of this as return value
end

puts sum_with_return 5,6
puts sum_without_return 5,6


def concatenate(s1="",s2="")        # Making the arguments optional using default value
  s1 + s2
end

res = concatenate("Hello", "World")
puts res
res = concatenate("Hello")          # Passing 1st parameter the 2nd will use default value
puts res


# You can put positional arguments and array of arguments in between
# *nums is called splat argument

def adder(a,b,*nums, c, d)
  sum = a+b

  sum_n = 0
  for i in 0...nums.size
    sum_n+=nums[i]
  end
  sum=sum+sum_n

  sum=sum+c+d
  return sum
end

p adder(1,2,3,4,5,6)      # Ruby will read it as a=1,b=2,nums=[3,4],c=5,d=6
