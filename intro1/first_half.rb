def first_half(array)
    len = array.length()
    mid = array.length() / 2

    if len % 2 != 0
        return array[0..mid]
    else
        return array[0...mid]
    end

end

print first_half(["Brian", "Abby", "David", "Ommi"]) # => ["Brian", "Abby"]
puts
print first_half(["a", "b", "c", "d", "e"])          # => ["a", "b", "c"]