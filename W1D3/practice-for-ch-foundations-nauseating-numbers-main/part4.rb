
def prime?(num)
    if num < 2
        return false
    end

    (2...num).each {|factor|
        if num % factor == 0
            return false
        end
    }

    return true

end

def is_mersenne_prime(num)
    if !prime?(num)
        return false
    end

    (1..num).each {|idx|
        val = 2**idx-1
        if val > num
            break
        end

        if val == num
            return true
        end
    }
    return false
end

def mersenne_prime(num)
    mersenne_primes = []

    i = 3
    while mersenne_primes.length < num
        if is_mersenne_prime(i)
            mersenne_primes << i
        end
        i += 1

    end

    mersenne_primes[num-1]

end

# p mersenne_prime(1) # 3
# p mersenne_prime(2) # 7
# p mersenne_prime(3) # 31
# p mersenne_prime(4) # 127
# p mersenne_prime(6) # 131071

def triangular_word?(str)
    alphabets = "abcdefghijklmnopqrstuvwxyz"

    count = 0
    str.each_char{|char|
        count += alphabets.index(char) + 1
    }

    i = 1
    while true
        tri_num = (i * (i+1)) / 2
        if tri_num == count
            return true
        end
        if tri_num > count
            return false
        end
        i += 1
    end


end

# p triangular_word?('abc')       # true
# p triangular_word?('sink')      # false
# p triangular_word?('ba')        # true
# p triangular_word?('lovely')    # true
# p triangular_word?('question')  # true
# p triangular_word?('aa')        # false
# p triangular_word?('cd')        # false
# p triangular_word?('cat')       # false

def consecutive_collapse(arr)
    collapsable = true

    while collapsable
        collapsable = false
        (0...arr.length).each {|idx|
            if arr[idx+1] && (arr[idx]+1 == arr[idx+1] || arr[idx] - 1 == arr[idx+1])
                arr = arr[0...idx] + arr[idx+2..-1]
                collapsable = true
                break
            end
        }
    end
    arr
end

# p consecutive_collapse([3, 4, 1])                     # [1]
# p consecutive_collapse([1, 4, 3, 7])                  # [1, 7]
# p consecutive_collapse([9, 8, 2])                     # [2]
# p consecutive_collapse([9, 8, 4, 5, 6])               # [6]
# p consecutive_collapse([1, 9, 8, 6, 4, 5, 7, 9, 2])   # [1, 9, 2]
# p consecutive_collapse([3, 5, 6, 2, 1])               # [1]
# p consecutive_collapse([5, 7, 9, 9])                  # [5, 7, 9, 9]
# p consecutive_collapse([13, 11, 12, 12])              # []


def pretentious_primes(arr, n)
    arr.each.with_index {|ele, idx|
        i = ele
        prime_nums = []
        while prime_nums.length < n.abs && i >= 2
            n > 0 ? i += 1 : i -= 1
            if prime?(i)
                prime_nums << i 
            end
        end
        arr[idx] = prime_nums[n.abs-1]
    }
    arr
end
p pretentious_primes([4, 15, 7], 1)           # [5, 17, 11]
p pretentious_primes([4, 15, 7], 2)           # [7, 19, 13]
p pretentious_primes([12, 11, 14, 15, 7], 1)  # [13, 13, 17, 17, 11]
p pretentious_primes([12, 11, 14, 15, 7], 3)  # [19, 19, 23, 23, 17]
p pretentious_primes([4, 15, 7], -1)          # [3, 13, 5]
p pretentious_primes([4, 15, 7], -2)          # [2, 11, 3]
p pretentious_primes([2, 11, 21], -1)         # [nil, 7, 19]
p pretentious_primes([32, 5, 11], -3)         # [23, nil, 3]
p pretentious_primes([32, 5, 11], -4)         # [19, nil, 2]
p pretentious_primes([32, 5, 11], -5)         # [17, nil, nil]