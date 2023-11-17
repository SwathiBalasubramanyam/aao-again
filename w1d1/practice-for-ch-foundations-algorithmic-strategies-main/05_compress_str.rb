# Write a method, compress_str(str), that accepts a string as an arg. The method
# should return a new str where streaks of consecutive characters are
# compressed. For example "aaabbc" is compressed to "3a2bc".

def compress_str(str)

    comp_str = ""
    
    i = 0
    while i < str.length
        curr_char = nil
        cnt = 0
        (i...str.length).each{|idx|
            if !curr_char
                curr_char = str[idx]
            end 

            if curr_char == str[idx]
                cnt += 1
            else 
                break
            end
            i += 1
        }

        if cnt > 1
            comp_str += cnt.to_s 
        end
        comp_str += curr_char
    end
    comp_str
end

p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"