# Symbols are identifiers or names or labels.
# Symbols can be used as hash keys, represent an instance variable or to reference a method
# Symbols are more like strings than variables
# Symbols can be compared to each other, they are immutable and unique
# Symbols are faster than strings in form of hash keys
# Symbols are represented by :symbol and are of type (Symbol)

p :sym

p :sym.object_id, :sym.object_id

p :sym.class

# p :sym.methods.length                   # 81 methods available
# p "hello".methods.length                # 181 methods available

a = "hello"
b = "hello"
p "#{a.object_id}, #{b.object_id}"        # both strings are different objects

a = :hello
b = :hello
p "#{a.object_id}, #{b.object_id}"        # both symbols are same symbol object

