# For simplicity, we'll consider an email valid when it satisfies all of the following:
# - contains exactly one @ symbol
# - contains only lowercase alphabetic letters before the @
# - contains exactly one . after the @

def is_valid_email(str)
    words = str.split("@")

    if words.length != 2
        return false
    end

    alphabets = "abcdefghijklmnopqrstuvwxyz"

    words[0].each_char {|char|
        if !alphabets.include?(char)
            return false
        end
    }

    if words[1].split(".").length != 2
        return false
    end
    
    return true

end

puts is_valid_email("abc@xy.z")         # => true
puts is_valid_email("jdoe@gmail.com")   # => true
puts is_valid_email("jdoe@g@mail.com")  # => false
puts is_valid_email("jdoe42@gmail.com") # => false
puts is_valid_email("jdoegmail.com")    # => false
puts is_valid_email("az@email")         # => false