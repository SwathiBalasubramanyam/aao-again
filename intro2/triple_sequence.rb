def triple_sequence(start, length)
    res_arr = []

    (0...length).each{|idx|
        res_arr << start
        start *= 3
    }

    res_arr

end

print triple_sequence(2, 4) # => [2, 6, 18, 54]
puts
print triple_sequence(4, 5) # => [4, 12, 36, 108, 324]
puts