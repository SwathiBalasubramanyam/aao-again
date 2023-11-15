def combinations(arr)

    res_arr = []

    # arr.each_with_index { |ele1, idx1|
    #     arr.each_with_index { |ele2, idx2|
    #         if idx2 > idx1
    #             res_arr << [ele1, ele2]
    #         end
    #     }
    # }

    (0...arr.length).each { |idx1|
        (idx1+1...arr.length).each { |idx2|
            res_arr << [arr[idx1], arr[idx2]]
        }

    }
    res_arr
end

print combinations(["a", "b", "c"]); # => [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
puts

print combinations([0, 1, 2, 3]); # => [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
puts