def opposite_count(nums)

    res_nums = []
    
    # nums.each_with_index{ |ele1, idx1|
    #     nums.each_with_index { |ele2, idx2|
    #         if idx2 <= idx1
    #             next
    #         end

    #         if ele1 + ele2 == 0
    #             res_nums << [ele1, ele2]
    #         end
    #     }
    # }

    (0...nums.length).each{|idx1|
        (idx1+1...nums.length).each { |idx2|
            if nums[idx1] + nums[idx2] == 0
                res_nums << [nums[idx1], nums[idx2]]
            end
        }
    }

    res_nums.length

end

puts opposite_count([ 2, 5, 11, -5, -2, 7 ]) # => 2
puts opposite_count([ 21, -23, 24 -12, 23 ]) # => 1