def reverse_words(sent)

    new_sent = []

    sent.split(" ").each { |word|
        new_sent << word.reverse()
    }
    new_sent.join(" ")
end

puts reverse_words('keep coding') # => 'peek gnidoc'
puts reverse_words('simplicity is prerequisite for reliability') # => 'yticilpmis si etisiuqererp rof ytilibailer'