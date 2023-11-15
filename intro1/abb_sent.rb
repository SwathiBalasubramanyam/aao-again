def abbreviate_sentence(sent)
    vowels = "aeiou"
    sent_split = sent.split(" ")
    new_words = []
    sent_split.each {|word|
        if word.length <= 4
            new_words << word
            next
        end
        new_word = ""
        word.each_char {|char|
            if !vowels.include?(char)
                new_word += char
            end
        }
        new_words << new_word
    }
    new_words.join(" ")
end

puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"