def same_char_collapse(str)

    can_we_reduce = true

    while can_we_reduce
        can_we_reduce = false
        str.each_char.with_index{|char, idx|
            if char == str[idx+1]
                str = str[0...idx] + str[idx+2..-1]
                can_we_reduce = true
                break
            end
        }
    end

    str
end

puts same_char_collapse("zzzxaaxy")   #=> "zy"
# because zzzxaaxy -> zxaaxy -> zxxy -> zy


puts same_char_collapse("uqrssrqvtt") #=> "uv"
# because uqrssrqvtt -> uqrrqvtt -> uqqvtt -> uvtt -> uv