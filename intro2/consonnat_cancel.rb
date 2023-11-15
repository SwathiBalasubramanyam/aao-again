def consonant_cancel(sentence)
    vowels = "aeiou"

    sentence.split(" ").map{|word|
        new_word = word
        word.each_char.with_index{|char, idx|
            if vowels.include?(char)
                new_word = word[idx..-1]
                break
            end
        }
        new_word
    }.join(" ")

end

puts consonant_cancel("down the rabbit hole") #=> "own e abbit ole"
puts consonant_cancel("writing code is challenging") #=> "iting ode is allenging"