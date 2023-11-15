def prime_factors(num)
    (1...num).select{|idx|
        num % idx == 0 && prime?(idx)
    }

end

def prime?(num)
    if num < 2
        return false
    end

    (2...num).each{|idx|
        if num % idx == 0
            return false
        end
    }

    return true
end

print prime_factors(24) #=> [2, 3]
puts
print prime_factors(60) #=> [2, 3, 5]
puts