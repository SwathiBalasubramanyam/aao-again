require 'set'

def frequent_letters(string)
    char_cnt = Hash.new(0)
    res_arr = Set.new()

    string.each_char{ |char|
        char_cnt[char] += 1
        if char_cnt[char] > 2
            res_arr.add(char)
        end
    }

    res_arr.to_a()

end

print frequent_letters('mississippi') #=> ["i", "s"]
puts
print frequent_letters('bootcamp') #=> []
puts