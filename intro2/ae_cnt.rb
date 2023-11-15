def ae_count(str)
    ae_cnt = Hash.new(0)

    str.each_char{|char|
        if char == "a" || char == "e"
            ae_cnt[char] += 1
        end
    }
    ae_cnt
end

puts ae_count("everyone can program") #=> {"a"=>2, "e"=>3}
puts ae_count("keyboard") #=> {"a"=>1, "e"=>1}