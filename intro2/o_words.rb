def o_words(sentence)

    sentence.split(" ").select{|word| word.include?("o")}

end

print o_words("How did you do that?") #=> ["How", "you", "do"]
puts