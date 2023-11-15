def array_translate(array)
    res_arr = []

    array.each_with_index { |ele, idx|
        if idx % 2 == 0
            array[idx+1].times{
                res_arr << array[idx]
            }
        end
    }

    res_arr.join("")

end

print array_translate(["Cat", 2, "Dog", 3, "Mouse", 1]); # => "CatCatDogDogDogMouse"
puts

print array_translate(["red", 3, "blue", 1]); # => "redredredblue"
puts