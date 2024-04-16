# predicate methods are those methods that aska question about an object
# predicate methods name end with ?
# this indicates that the method will return boolean
# This is also the convention in Ruby all true/false returning methods will have ?

# Example: object.method?

# int.odd? -> returns true if odd, false otherwise
# int.even? -> returns true if even, false otherwise

x = 10

p x.odd?                        # check for odd number
p x.even?                       # check for even number

p x.positive?                   # check for positive number
p x.negative?                   # check for negative number

# predicate methods can't work without the question mark (?)

# Go to arithemetic_methods.rb