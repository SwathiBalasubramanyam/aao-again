# Hint: all keys of a hash are automatically unique
require 'set'

def unique_elements(arr)
    # return Set.new(arr).to_a

    ele_cnt = Hash.new(0)

    arr.each{|ele|
        ele_cnt[ele] += 1
    }

    ele_cnt.keys()

end

print unique_elements(['a', 'b', 'a', 'a', 'b', 'c']) #=> ["a", "b", "c"]
puts