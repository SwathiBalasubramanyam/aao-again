def summation_sequence(start, length)
    res_arr = []
    (0...length).each{|idx|
        res_arr << start
        start = (1..start).sum()
    }
    res_arr

end


print summation_sequence(3, 4) # => [3, 6, 21, 231]
print summation_sequence(5, 3) # => [5, 15, 120]