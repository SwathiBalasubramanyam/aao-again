def two_d_translate(arr)
    res_arr = []

    arr.each { |sub_arr|
        sub_arr[1].times {
            res_arr << sub_arr[0]
        }
    }

    res_arr

end

arr_1 = [
  ['boot', 3],
  ['camp', 2],
  ['program', 0]
]

print two_d_translate(arr_1) # => [ 'boot', 'boot', 'boot', 'camp', 'camp' ]
puts

arr_2 = [
  ['red', 1],
  ['blue', 4]
]

print two_d_translate(arr_2) # => [ 'red', 'blue', 'blue', 'blue', 'blue' ]
puts