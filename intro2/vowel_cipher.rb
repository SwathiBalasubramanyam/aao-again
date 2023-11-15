def vowel_cipher(string)
    vowels = "aeiou"

    string.each_char.map{|char|

        if vowels.include?(char)
            idx = (vowels.index(char) + 1) % vowels.length
            vowels[idx]
        else
            char
        end

    }.join("")

end

puts vowel_cipher("bootcamp") #=> buutcemp
puts vowel_cipher("paper cup") #=> pepir cap