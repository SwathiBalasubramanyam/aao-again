def last_index(str, char)
    curr_idx = nil

    str.each_char.with_index {|str_char, idx| 
        if str_char == char && (!curr_idx || idx > curr_idx)
            curr_idx = idx
        end
    }

    curr_idx
end

puts last_index("abca", "a")       #=> 3
puts last_index("mississipi", "i") #=> 9
puts last_index("octagon", "o")    #=> 5
puts last_index("programming", "m")#=> 7