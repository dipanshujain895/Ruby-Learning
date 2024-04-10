# Everything in ruby is an object
# .class method is used to know that the object is of which class (type)

puts "Hello World".class                  # String
puts 5.class                              # Integer
puts 7.124.class                          # Float


puts true.class, false.class              # TrueClass, FalseClass

puts nil.class                            # NilClass


# Null is represeneted in ruby as "nil"
# It represents blankness, emptiness, NULL, None etc
x = nil

p x

# Object Referencing
#
#
a = [1,2,3,4]
b = a

p "#{a}, #{a.object_id}"
p "#{b}, #{b.object_id}"                # Will return same as above as reference is copied

p [1,2,3,4].object_id
p [1,2,3,4].object_id                   # Everytime new object is created with new object_id
