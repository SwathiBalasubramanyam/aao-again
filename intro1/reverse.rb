def reverse(word)
    rev_word = ""
    i = word.length - 1
    while i >= 0
        rev_word += word[i]
        i -= 1
    end
    return rev_word
end

puts reverse("cat")          # => "tac"
puts reverse("programming")  # => "gnimmargorp"
puts reverse("bootcamp")     # => "pmactoob"