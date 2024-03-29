# rand -> generate random number from 0 to 1
# rand(num) -> generate random number from 0 to num (exclusive)
# rand(range) ->  generate random number from the given range (inclusive or exclusive)
# rand.round(n) -> round generated number to n places
#
# If range is float then the random will also be float

puts rand                           # 0 to 1 any random float number
puts rand.round(2)                  # 0.142145 -> 0.14 (rounded)
puts rand(100)                      # 0 to 99
puts rand(1..20)                    # Inclusive 20
puts rand(1...20)                   # Exclusive 20
