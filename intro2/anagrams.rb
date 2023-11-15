def anagrams?(word1, word2)

    word2 = word2.split("")

    word1.each_char{|char|
        idx = word2.index(char)
        if !idx 
            return false
        end
        word2.delete_at(idx)
    }

    word2.length == 0
end

puts anagrams?("cat", "act")          #=> true
puts anagrams?("restful", "fluster")  #=> true
puts anagrams?("cat", "dog")          #=> false
puts anagrams?("boot", "bootcamp")    #=> false