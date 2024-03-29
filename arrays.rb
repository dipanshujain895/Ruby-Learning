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
