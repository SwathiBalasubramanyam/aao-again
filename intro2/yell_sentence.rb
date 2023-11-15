def yell_sentence(sent)

    sent.split(" ").map{|ele| ele.upcase() + "!"}

end

puts yell_sentence("I have a bad feeling about this") #=> "I! HAVE! A! BAD! FEELING! ABOUT! THIS!"