# In ruby, we have multiple types of loops
# 1. Block loop using times, step, upto, downto , each (works on Array)
# 2. for loop
# 3. while loop
# 4. until loop - inverse of while loop

count = 0
while (count<10)
  puts count
  count+=1
end

puts

until count==0
  puts count
  count = count-1
end

puts

# In ruby we have next keyword which is equivalent to continue
# Using next to skip the iteration
count = 1
while(count<10)
  if(count % 2 == 0)        # Skip all even numbers
    count+=1
    next
  end
  puts count
  count+=1
end
