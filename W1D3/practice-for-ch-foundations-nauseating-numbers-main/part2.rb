
def num_factors(num)
    (1...num).count {|n| num % n == 0 }
end

def anti_prime?(num)
    factors_of_num = num_factors(num)

    (1...num).all? {|n| num_factors(n) < factors_of_num}

end

# p anti_prime?(24)   # true
# p anti_prime?(36)   # true
# p anti_prime?(48)   # true
# p anti_prime?(360)  # true
# p anti_prime?(1260) # true
# p anti_prime?(27)   # false
# p anti_prime?(5)    # false
# p anti_prime?(100)  # false
# p anti_prime?(136)  # false
# p anti_prime?(1024) # false


def matrix_addition(mat1, mat2)
    rows = mat1.length
    cols = mat1[0].length
    res_mat = Array.new(rows) {[0] * cols}

    (0...rows).each{|row_idx|
        (0...cols).each{|col_idx|
            res_mat[row_idx][col_idx] = mat1[row_idx][col_idx] + mat2[row_idx][col_idx]
        }
    }

    res_mat

end

matrix_a = [[2,5], [4,7]]
matrix_b = [[9,1], [3,0]]
matrix_c = [[-1,0], [0,-1]]
matrix_d = [[2, -5], [7, 10], [0, 1]]
matrix_e = [[0 , 0], [12, 4], [6,  3]]

# p matrix_addition(matrix_a, matrix_b) # [[11, 6], [7, 7]]
# p matrix_addition(matrix_a, matrix_c) # [[1, 5], [4, 6]]
# p matrix_addition(matrix_b, matrix_c) # [[8, 1], [3, -1]]
# p matrix_addition(matrix_d, matrix_e) # [[2, -5], [19, 14], [6, 4]]


def mutual_factors(*args)
    highest_num = args.sort.reverse[0]
    common_divisors = []
    (1..highest_num).each{|factor|
        if args.all? {|arg| arg%factor == 0}
            common_divisors << factor
        end     
    }
    common_divisors
end

# p mutual_factors(50, 30)            # [1, 2, 5, 10]
# p mutual_factors(50, 30, 45, 105)   # [1, 5]
# p mutual_factors(8, 4)              # [1, 2, 4]
# p mutual_factors(8, 4, 10)          # [1, 2]
# p mutual_factors(12, 24)            # [1, 2, 3, 4, 6, 12]
# p mutual_factors(12, 24, 64)        # [1, 2, 4]
# p mutual_factors(22, 44)            # [1, 2, 11, 22]
# p mutual_factors(22, 44, 11)        # [1, 11]
# p mutual_factors(7)                 # [1, 7]
# p mutual_factors(7, 9)              # [1]

def tribonacci_number(num)
    trib_seq = [1,1,2]

    while trib_seq.length < num
        trib_seq << trib_seq[-1] + trib_seq[-2] + trib_seq[-3]
    end

    return trib_seq[num-1]

end

p tribonacci_number(1)  # 1
p tribonacci_number(2)  # 1
p tribonacci_number(3)  # 2
p tribonacci_number(4)  # 4
p tribonacci_number(5)  # 7
p tribonacci_number(6)  # 13
p tribonacci_number(7)  # 24
p tribonacci_number(11) # 274