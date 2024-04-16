# Special methods exist for objects like
# int.+(val) -> add
# int.-(val) -> subtract
# int.*(val) -> multiply
# int./(val) -> divide
# int.div(val) -> alias for int./(val) just uses the word div


p 10.+(5)
p 10.-(5)
p 10.*(5)
p 10./(5)
p 10.div(5) # only div exists as an extra method

# Go to functions.rb