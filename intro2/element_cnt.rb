def element_count(arr)
    ele_cnt = Hash.new(0)

    arr.each{|char|
        ele_cnt[char] += 1
    }

    ele_cnt

end

puts element_count(["a", "b", "a", "a", "b"]) #=> {"a"=>3, "b"=>2}
puts element_count(["red", "red", "blue", "green"]) #=> {"red"=>2, "blue"=>1, "green"=>1}