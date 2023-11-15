def hand_score(hand)
    score_hash = {
        'a' => 4,
        'k' => 3,
        'q' => 2,
        'j' => 1
    }

    total_score = 0
    hand.each_char { |char|
        total_score += score_hash[char.downcase()]
    }

    total_score

end

puts hand_score("AQAJ") #=> 11
puts hand_score("jJka") #=> 9