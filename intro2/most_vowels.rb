def most_vowels(sentence)
    word_vowels_cnt = Hash.new(0)

    sentence.split(" ").each{|word|
        word_vowels_cnt[word] = count_vowels(word)
    }

    word_vowels_cnt.sort_by {|k, v| v}[-1][0]

end

def count_vowels(word)
    vowels = "aeiou"
    cnt = 0
    word.each_char{|char| 
        if vowels.include?(char)
            cnt += 1
        end
    }
    cnt
end

print most_vowels("what a wonderful life") #=> "wonderful"