def double_letter_count(string)
    cnt = 0

    string.each_char.with_index{|char, idx|

        if idx == string.length - 1
            next
        end

        if char == string[idx+1]
            cnt += 1
        end

    }

    cnt

end

puts double_letter_count("the jeep rolled down the hill") #=> 3
puts double_letter_count("bootcamp") #=> 1