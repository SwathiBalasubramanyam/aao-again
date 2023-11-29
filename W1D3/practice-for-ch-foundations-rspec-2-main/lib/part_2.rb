def palindrome?(str)
    rev_str = ""
    str.each_char {|char|
        rev_str = char + rev_str
    }
    str == rev_str
end

def substrings(str)
    sub_strs = []
    (0...str.length).each{|idx|
        (idx...str.length).each{|jdx|
            sub_strs << str[idx..jdx]
        }
    }
    sub_strs
end

def palindrome_substrings(str)
    substrings(str).select{|sub_str| sub_str.length > 1 and palindrome?(sub_str)}
end