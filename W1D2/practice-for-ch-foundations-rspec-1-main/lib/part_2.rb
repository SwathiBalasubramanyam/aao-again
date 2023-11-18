def hipsterfy(word)
    vowels = "aeiou"
    word = word.reverse
    word.each_char.with_index{|char, idx| 
        if vowels.include?(char)
            word = word[0...idx] + word[idx+1..-1]
            return word.reverse
        end
    }
    word.reverse
end

def vowel_counts(str)
    vowels = "aeiou"
    char_cnt = Hash.new(0)
    str.downcase.each_char{|char|
        if vowels.include?(char)
            char_cnt[char] += 1
        end
    }
    char_cnt
end

def caesar_cipher(msg, num)
    alphabets = "abcdefghijklmnopqrstuvwxyz"
    msg.split(" ").map {|word|
        word.each_char.map{|char|
            alphabets.include?(char) ? alphabets[(alphabets.index(char) + num) % 26] : char
        }.join("")
    }.join(" ")
end