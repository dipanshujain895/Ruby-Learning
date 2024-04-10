# Hashes in ruby are same as dictionary in python
# Hashes are data structure containing key-value pairs

# Keys are unique, Values can be same for multiple keys
# Hash values are extracted using keys and not by the order

# Hashes are represented by {}
# key value is assigned using hash-rocket symbol (=>) {key => value}
# Example of printing a hash {key => value, key => value, key => value}

hash = {}

hash["a"] = "apple"
hash["b"] = "ball"
hash["c"] = "cat"

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
