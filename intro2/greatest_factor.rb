def greatest_factor_array(arr)

    arr.map {|ele|
        if ele % 2 == 0
            factors(ele)[-1]
        else
            ele
        end
    }

end

def factors(num)
    facs = []

    (1...num).each{|idx|
        if num % idx == 0
            facs << idx
        end
    }
    facs

end

print greatest_factor_array([16, 7, 9, 14]) # => [8, 7, 9, 7]
puts
print greatest_factor_array([30, 3, 24, 21, 10]) # => [15, 3, 12, 21, 5]
puts