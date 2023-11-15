def fibonacci(length)

    if length == 0
        return []
    elsif length == 1
        return [1]
    elsif length == 2
        return [1,1]
    end

    res = [1,1]

    (2...length).each{|idx|
        res << res[idx-1] + res[idx-2]
    }

    res

end

print fibonacci(0) # => []
puts
print fibonacci(1) # => [1]
puts
print fibonacci(6) # => [1, 1, 2, 3, 5, 8]
puts
print fibonacci(8) # => [1, 1, 2, 3, 5, 8, 13, 21]
puts