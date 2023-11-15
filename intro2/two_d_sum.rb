def two_d_sum(arr)
    total_sum = 0

    # arr.each {|sub_arr|
    #     total_sum += sub_arr.sum()
    # }

    arr.each {|sub_arr|
        sub_arr.each {|num|
            total_sum += num
        }
    }
    return total_sum
end

array_1 = [
    [4, 5],
    [1, 3, 7, 1]
]
puts two_d_sum(array_1)    # => 21

array_2 = [
    [3, 3],
    [2],
    [2, 5]
]
puts two_d_sum(array_2)    # => 15