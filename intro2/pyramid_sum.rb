# For example, the base [1, 4, 6] gives us the following pyramid
#     15
#   5   10
# 1   4    6

def pyramid_sum(base)
    res_arr = []

    while base.length >= 1
        res_arr = [base] + res_arr
        base = adjacent_sum(base)
    end
    res_arr
end

def adjacent_sum(arr)
    res_arr = []
    (0...arr.length-1).each{|idx|
        res_arr << arr[idx] + arr[idx+1]
    }
    res_arr
end

print pyramid_sum([1, 4, 6]) #=> [[15], [5, 10], [1, 4, 6]]
puts

print pyramid_sum([3, 7, 2, 11]) #=> [[41], [19, 22], [10, 9, 13], [3, 7, 2, 11]]
puts