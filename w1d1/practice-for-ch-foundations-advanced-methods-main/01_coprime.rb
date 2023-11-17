# Write a method, coprime?(num_1, num_2), that accepts two numbers as args. The
# method should return true if the only common divisor between the two numbers
# is 1. The method should return false otherwise. For example coprime?(25, 12)
# is true because 1 is the only number that divides both 25 and 12.
require 'set'

def coprime?(num1, num2)
    Set.new(factors(num1)).intersection(Set.new(factors(num2))).to_a == [1]
end

def factors(num)
    res_arr = []
    (1..num).each {|idx|
        if num % idx == 0
            res_arr << idx
        end
    }
    res_arr
end


p coprime?(25, 12)    # => true
p coprime?(7, 11)     # => true
p coprime?(30, 9)     # => false
p coprime?(6, 24)     # => false