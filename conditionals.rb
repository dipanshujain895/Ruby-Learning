# We can add conditions to our code using conditionals
# Three types of conditionals
# 1. if-else, if-elsif-else
# 2. case block (case-when)
# 3. unless -> Execute if false
#
print("Enter a number: ")
x = gets.chomp.to_i

if x.odd?
  puts "#{x} is an odd number"
else
  puts "#{x} is an even number"
end

print("Enter A: ")
a = gets.chomp.to_i
print("Enter B: ")
b = gets.chomp.to_i
print("Enter C: ")
c = gets.chomp.to_i

if a>b && a>c
  puts "A greatest"
elsif b>a && b>c
  puts "B greatest"
elsif c>a && c>b
  puts "C greatest"
else
  puts "All are equal"
end

print("Enter Day Number: ")
dayno = gets.chomp.to_i

case dayno
when 1
  p "Monday"
when 2
  p "Tuesday"
when 3
  p "Wednesday"
when 4
  p "Thursday"
when 5
  p "Friday"
when 6
  p "Saturday"
when 7
  p "Sunday"
else
  p "Invalid Day Number"
end

# unless
# execute if a condition is false
# Definition: "except if" -> run this code except if a condition is true


x=1

if(x!=5)
  p "Hi"
else
  p "Bye"
end


unless x==5
  p ("Hi")
end


# case-when using ranges
print("Enter Day Number Again: ")
dayno = gets.chomp.to_i

days = [
  'Monday',
  'Tuesday',
  'Wednesday',
  'Thursday',
  'Friday',
  'Saturday',
  'Sunday'
];

case dayno
when 1..7
  p "Valid dayno"
  p "Today is #{days[dayno-1]}"
else
  p "Invalid dayno"
end

def calculate_test_grade(per)

  case per                        # For single liner statements or returns in case
  when 90..100 then "A"           # you can use then keyword
  when 80...90 then "B"
  when 70...80 then "C"
  when 60...70 then "D"
  else "F"                        # else doesnt use then
  end
end

res = calculate_test_grade(75)
p res
