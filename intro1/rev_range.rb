def reverse_range(min, max)
    res = []
    i = min + 1
    while i < max
        res = [i] + res
        i += 1
    end
    res
end

print reverse_range(10, 17) # => [16, 15, 14, 13, 12, 11]
puts
print reverse_range(1, 7)   # => [6, 5, 4, 3, 2]