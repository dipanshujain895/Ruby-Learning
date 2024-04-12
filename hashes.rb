# Hashes in ruby are same as dictionary in python
# Hashes are data structure containing key-value pairs

# Keys are unique, Values can be same for multiple keys
# Hash values are extracted using keys and not by the order

# Hashes are represented by {}
# key value is assigned using hash-rocket symbol (=>) {key => value}
# Example of printing a hash {key => value, key => value, key => value}

hash = {}

# Adding key value pairs
# 1. hash[key] = value
# 2. hash.store(key, value)
hash["a"] = "apple"
hash["b"] = "ball"
hash["c"] = "cat"
hash.store("l", "lilyput")

p hash
puts hash
puts hash.class

# Key=>value is
hash = {
  "a"=>"Apple",
  "b"=>"Ball",
  "c"=>"Cat"
}
p hash


# length() and empty?()
p hash.length
p hash.empty?

# Accessing values from hash
# 1. using hash[key]
# 2. using hash.fetch(key, default)

p hash["c"]                                 # Fetches the value based on key
p hash["d"]                                 # Returns nil for non existent key
p hash.fetch("c")                           # Fetching a value based on key
p hash.fetch("d", "dog")                    # Sending a default value in case of non existent key

# Using Symbols as hash keys
# 1st way -> hash = {:key => value}
# 2nd way -> hash = {key: value}     -> the color representing symbol is at end of key

person = {
  :name => "Adi",
  :age => 25,
  :handsome => true
}

p person
p person[:name], person.fetch(:age)

person = {
  name: "Adi",
  age: 25,
  handsome: true
}

p person
p person[:name], person.fetch(:age)

# Shorthand syntax for creating hashes
# If you have same variable names for values
# you can omit giving them
# Ex hash = {key1:, key2:, key3: }  -> Ruby will find any variables declared with names key1,2,3...

name = "Aakash"
age = 31
handsome = false

person2 = { name:, age:, handsome: }
p person2

# Iterating over hashes
# 1. each {}      - Iterate over each key-value pair
# 2. each_key {}   - Iterate over each key
# 3. each_value {} - Iterate over each value
# 4. keys()       - Return array of keys from hash
# 5. values()     - Return array of values from hash

hash.each {|key, value| p "Key: #{key}, Value: #{value}"}
puts
hash.each_key {|key| p "Key: #{key}, Value: #{hash[key]}"}
puts
hash.each_value {|value| p "Value: #{value}"}
puts

p hash.keys
p hash.values

# Check if key or value exists in hash
# 1. .include?(key) -> Checks if given key exists in the hash
# 2. .key? and has_key? -> Checks if given key exists in hash
# 3. .value? and has_value? -> Checks if any key has the given value in the hash

p hash.include?("b")
p hash.key?("c")                      # "c" exists as a string key in hash so it will give true
p hash.has_key?("d")
p hash.value?("Apple")
p hash.has_value?("Solo")

p person.key?(name)                   # name doesnt exist in person as a string key
p person.key?(:name)                  # name exists in person as a symbol key


# .select/.reject {} same as array just takes both key value pair in hash

p hash.select {|key,value| value.length>4}
p hash.reject {|key,value| value.length>4}

p person.select {|key, value| key.to_s.include?("m")}     # Since key was symbol, we used to_s

p person.reject {|key, value| key.to_s.include?("m")}     # converted symbol to string then checked

# Convert hash to array [[key1,val1], [key2,val2] ...]
# .to_a -> converts given object to array

p hash.to_a         # key is a string
p person.to_a       # key is a symbol


# Convert array to hash
# .to_h -> Converts given object to hash

fruit_price_arr = [
  ["Mango", 65],
  ["Apple", 100],
  ["Orange", 40],
  ["Banana", 80],
]

fruit_price_hash = fruit_price_arr.to_h
p fruit_price_hash

# Removing key-value pairs using .delete(key)
# Returns deleted value of the key
# If key doesnt exist returns nil

del_val = fruit_price_hash.delete("Mango")
p fruit_price_hash, del_val

del_val = fruit_price_hash.delete("Kiwi")
p fruit_price_hash, del_val

vegetable_price_hash = {
  "potato" => 40,
  "tomato" => 50,
  "onion" => 80
}

p fruit_price_hash.merge(vegetable_price_hash)

hash2 = Hash.new()
p hash2

hash2[:dipanshu] = "7503"
hash2[:akanksha] = "9315"
hash2[:rishabh]  = "9773"

p hash2

