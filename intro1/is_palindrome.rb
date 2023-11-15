def is_palindrome(word)
    return word == reverse(word)
end

def reverse(word)
    rev_word = ""
    i = word.length - 1
    while i >= 0
        rev_word += word[i]
        i -= 1
    end
    return rev_word
end

puts is_palindrome("racecar")  # => true
puts is_palindrome("kayak")    # => true
puts is_palindrome("bootcamp") # => false