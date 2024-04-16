# In Ruby, arrays are represented by [] and they can hold values of any data type
# You can have an array of multiple data types Ex: [11,37.8, true, "Hello"]
# But majorly the arrays are made of single type of data


# Arrays can be created using [] or with (%w or %W)
arr = [11,22,33,44,55]
p arr

# Creating array using %w[str1 str2 ...]
# You can create a string array, the values will be space separated and without quotes
names = %w[Rishab Uday Pragati Virendra Ashu Prabhashish Tanush]
p names

# Accessing elements can be done by indexing, slice, .[](index), .fetch(index, default)
# .values(index1, index2, index3 ....)
p names[0]
p names.slice(0)
p names.[](0)
p names.fetch(0)
p names.fetch(100, "Invalid Name")
p names.values_at(0, 3, 6, 2, 7)         # Getting values at index 0, 3, 6 , 2 and 7
# Note: values_at will give null for wrong index

# Array slicing using arr[start, no_of_elem] , arr.slice(start, no_of_elem)
p names[2, 4]
p names.slice(2, 4)
p names.slice(2, 0)                 # Will return [] as 0 elements are pulled out

# Updating elements in array can be done in two ways
# 1. arr[index] = value
# 2. arr[index, no_of_elem_to_replace] = [elem1, elem2,... ]
# Copies elements from given array into the original array by replacing specified index elements

names[-1] = "Tanuj"
p names

# Replacing 2 names present in array with 4 names
names[5, 2] = ["Prabhashish", "Shyam", "Tanuj","Muskan"]
p names

# Use first and last method to get elements from start and end of array
p names.first                   # default to first element
p names.first 4                 # first 4 elems

p names.last                    # default to last element
p names.last 4                  # last 4 elems

# length and size to get the number of elements in the array
p names.length
p names.size                    # Same output as length

# count(val) -> to count occurences of elem in array

p names.count("Rishab")

# Check if array is empty
# 1. using arr.length == 0
# 2. using .empty?
arr = []
p arr.length == 0
p arr.empty?

# Array Comparison
# == will check if both arrays have same length and elements in same order
# != will check if arrays don't have same length or elements
arr1 = [1, 2, 3]
arr2 = [1, 2, 3]
arr3 = [1, 2, 3, 4]

p arr1 == arr2
p "#{arr1.object_id}, #{arr2.object_id}"

p arr1 != arr3


# Adding elements to the array
# 1. push() -> add at the end of array
# 2. shovel operator (<<) -> (same as push) appends the given value to array
# 3. insert(index, val1, val2, ...) -> adds the provided values at the specified index
# If the index is greater than current array length it will populate array with nil and then add at the specifed index
# 4. unshift(val1, val2, ...) -> Adds the provided values to the start of the array
arr1.push(4)
arr1 << 5 << 6
arr1.insert(1, 11,22,33)
p arr1

arr1.insert(12, 88)           # Since index 12 doesnt exist it will populate with 3 nils
p arr1                        # before adding it at index 12

arr1.unshift(10,20,30)        # added elements to the start of array
p arr1


# Elements can be deleted using
# 1. pop(no_of_elem) -> Deletes and returns elements from end of array by default removes 1 element
# 2. shift(no_of_elem) -> Deletes and returns elements from start of array by default removes 1 element
p arr1.pop                  # 88 is returned after deletion
p arr1
p arr1.pop(3)               # last 3 elements were nils which were returned
p arr1

p arr1.shift                # 10 is removed as it is in the start of array
p arr1.shift(2)             # 20,30 are removed as they are the 2 elements from start
p arr1

# Iterative over an array using .each() with block
# doesnt change anything in the array

arr1.each {|elem| print elem*2," "}
puts

p arr1

# Filtering Arrays using .each block
evens = []
odds = []

arr1.each do |elem|
    if(elem.even?)
        evens.append(elem)
    else
        odds.append(elem)
    end
end

p evens, odds

# Using .each_with_index to get element and index both

arr1.each_with_index do |elem, index|
    puts("Element at index #{index} = #{elem}")
end

# .map() and .collect() - Used to perform some operations on elements of array and return new array with updated elements

squared_array = arr1.map {|elem| elem*elem }
p squared_array

# Filtering Arrays with .select() & .reject()
# .select -> Filter the elements that satisfy the condition
# .reject -> Filter the elements that do not satisfy the condition

evens = arr1.select do |elem|
    elem % 2 == 0                           # All even elements will be selected to be added to new array
end
p evens

odds = arr1.reject do |elem|
    elem % 2 == 0                           # All even elements will be rejected and will not be added to new array
end
p odds


# Partitioning Arrays - .partition()
# partition - split an array based on a matching/non-matching condition
# returns an array containing 2 arrays
# first with elements matching the condition and other with non-matching
#
foods = ["Steak", "Vegetables", "Steak Burger", "Kale", "Tofu", "Tuna Steaks"]

steakItems = foods.select { |elem| elem.include?("Steak") }
p steakItems

nonSteakItems = foods.reject {|elem| elem.include?("Steak")}
p nonSteakItems

splitItemsArr = foods.partition {|elem| elem.include?("Steak")}
p splitItemsArr

# Ruby assignment also allows destructuring
steakItems, nonSteakItems = foods.partition {|elem| elem.include?("Steak")}
p steakItems, nonSteakItems

# .any? and all?
# .any? -> checks if any element matches the condition
# .all? -> checks if all elements matches the condition

nums = [11,22,33,44,55]

nums2 = [22,44,66,88]

p nums.any? {|elem| elem % 2 == 0}
p nums.all? {|elem| elem % 2 == 0}
p nums2.all? {|elem| elem % 2 == 0}

# .find {}/.detect {} -> finds first element in the array that matches the condition
p nums.find {|elem| elem % 2 == 0}      # Returns 22
p nums.detect {|elem| elem % 2 == 0}    # Returns 22

p nums.find {|elem| elem > 60}          # Returns nil as no elem matches the condition

# .index()/.find_index() -> returns the index of first occurence of the element

p nums.index(22)                        # Returns 1
p nums.find_index(33)                   # Returns 2
p nums.find_index(99)                   # Returns nil as elem not in array

# .include?(elem) ->  Checks if array contains this elem or not
p nums.include?(22)                     # Returns true
p nums.include?(99)                     # Returns false

# .max()/.min() -> returns max or min element of array
# Works on string array as well checks for lexicographical difference
# If no element is there in array returns nil

p nums.max
p nums.min

# .reverse()/.reverse!() - reverse an Array (! -> in-place)
p nums.reverse()
nums.reverse!
p nums


# .sort() - sort an Array in ascending/alphabetical order (! -> in-place)
nums = [1, 121, 484, 1089, 4, 9, 16, 25, 36]

p nums.sort
p nums.sort.reverse                     # Chaining sort and reverse to get descending
nums.sort!                              # Sort in-place
p nums

# .uniq() - return an array without the duplicate elements (! -> in-place)
nums2 = [1, 4, 9, 16, 4, 2, 11, 2, 10]
unique_nums = nums2.uniq
p unique_nums

nums2.uniq!                            # Removed duplicates in place
p nums2

# .compact() - removes nil from array (! -> in-place)
items = ["Steak", nil,"Baked Potato", "Tofu", nil, nil, "Carrot"]
p items.compact
items.compact!
p items

# .inject {}/.reduce {} - Return a new value by combining all elements of array or perform operation
# .inject { |aggregate, current| your_work } - aggregate is the aggregated value till now

sum = nums2.inject {|sum, curr| sum=sum+curr }
p sum

prod = nums2.reduce {|prod, curr| prod=prod*curr }
p prod

# .flatten() - Used to flatten a nested array to 1-d array (! -> in-place)
nested_arr = [
    [11, 21, 31],
    [12, 22, 32],
    [13, 23, 33]
]
flattened = nested_arr.flatten
p flattened

nested_arr.flatten!
p nested_arr

# .sample() - extract one or more random elements from array
iceCreamFlavors = [
    "Vanilla",
    "Chocolate",
    "Strawberry",
    "Mint Chocolate Chip",
    "Cookies and Cream",
    "Butter Pecan",
    "Rocky Road",
    "Coffee",
]
p iceCreamFlavors.sample                    # return 1 sample element
p iceCreamFlavors.sample(4)                 # return 4 sample elements

# Arrays can be multiplied using (*)
arr4 = [1,2,3]
p arr4 * 3                                 # returns 3 times repeated array

# Merge Arrays and Exclude Duplicates
# Symbol (|) is used to create union of any array elements (remove all duplicates)
arr5 = [1,2,3,4,5]
arr6 = [2,3,8,7,1,9]
p arr5 | arr6
p arr5.|(arr6)                  # .| is pipe method of array which does the same

# Remove items that exists in another Array
# (-) sign can be used to remove all items from first array that exists in second array
p arr5 - arr6
p arr5.-(arr6)                 # .- is subtract method of array which does the same

# Array Intersection and (&) operator
# Keep only those elements that are found in both

p arr5 & arr6
p arr5.&(arr6)                 # .& is intersection method of array which does the same

# Go to ranges.rb once if you haven't done it till now then,
# Go to strings.rb again for the functions that uses arrays