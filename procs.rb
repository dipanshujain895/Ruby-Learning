# Proc -> Object representatioon of a block
# procedure can be created using two ways
# 1. Proc.new {}
# 2. proc {}


to_squares = Proc.new { |elem| elem ** 2}

to_cubes = proc {|elem| elem ** 3}

# If i want to do cube of all numbers now with map {} i can now say
# arr.map(&to_cubes)  -> & tell ruby that the passed argument is a block
nums = [1,3,4,5,8]
p nums.map {|elem| elem ** 3}
p nums.map(&to_cubes)
p nums.map(&to_squares)

# p nums.map &to_cubes

# You can pass proc as an argument to the function using &proc_name as argument
# You can call your proc with arguments using my_proc.call(arg1,arg2....)
def talk_about(name, &my_proc)
  puts "Let me tell you something about #{name}"
  my_proc.call(name)                                # Here my_proc can be further used anywhere
end

def talk_about2(name)
  puts "Let me tell you something about #{name}"
  yield(name)                                       # Here my proc will only be used with yield
end

good_thing = Proc.new { |name| puts "#{name} is a good guy" }
bad_thing = Proc.new { |name| puts "#{name} is a bad guy" }

talk_about("Akshit", &good_thing)
talk_about("Rahul", &bad_thing)
talk_about("Bharath") { |name| puts "#{name} is a nice guy" }    # Here block will be converted to proc
puts

talk_about2("Rishabh") { |name| puts "#{name} is a special guy" }   # passing as normal block
talk_about("Adi", &good_thing)
