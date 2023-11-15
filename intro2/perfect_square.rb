def perfect_square?(num)

    (1...num).each{|idx|

        if idx * idx == num
            return true
        end

    }

    return false

end

puts perfect_square?(5)   #=> false
puts perfect_square?(12)  #=> false
puts perfect_square?(30)  #=> false
puts perfect_square?(9)   #=> true
puts perfect_square?(25)  #=> true