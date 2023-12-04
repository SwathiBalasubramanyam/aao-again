

def matrix_addition_reloaded(*args)

    rows = args[0].length
    cols = args[0][0].length

    res_arr = Array.new(rows) {[0] * cols}

    if !args.all? {|arg| (arg.length == rows) && (arg[0].length == cols)}
        return nil
    end

    (0...rows).each {|row_idx|
        (0...cols).each {|col_idx|
            res_arr[row_idx][col_idx] = args.sum {|arg| arg[row_idx][col_idx]}
        }
    }

    res_arr

end


matrix_a = [[2,5], [4,7]]
matrix_b = [[9,1], [3,0]]
matrix_c = [[-1,0], [0,-1]]
matrix_d = [[2, -5], [7, 10], [0, 1]]
matrix_e = [[0 , 0], [12, 4], [6,  3]]

# p matrix_addition_reloaded(matrix_a, matrix_b)              # [[11, 6], [7, 7]]
# p matrix_addition_reloaded(matrix_a, matrix_b, matrix_c)    # [[10, 6], [7, 6]]
# p matrix_addition_reloaded(matrix_e)                        # [[0, 0], [12, 4], [6, 3]]
# p matrix_addition_reloaded(matrix_d, matrix_e)              # [[2, -5], [19, 14], [6, 4]]
# p matrix_addition_reloaded(matrix_a, matrix_b, matrix_e)    # nil
# p matrix_addition_reloaded(matrix_d, matrix_e, matrix_c)    # nil

def transpose_matrix(mat)
    rows = mat.length
    cols = mat[0].length

    res = []
    (0...rows).each {|rowIdx|
        new_row = []
        (0...cols).each {|colIdx|
            new_row << mat[colIdx][rowIdx]
        }
        res << new_row
    }

    res
end

def squarocol?(mat)
    mat.any? {|row| row.all? {|ele| ele == row[0]}} || transpose_matrix(mat).any? {|row| row.all? {|ele| ele == row[0]}}
end

# p squarocol?([
#     [:a, :x , :d],
#     [:b, :x , :e],
#     [:c, :x , :f]
# ]) # true

# p squarocol?([
#     [:x, :y, :x],
#     [:x, :z, :x],
#     [:o, :o, :o]
# ]) # true

# p squarocol?([
#     [:o, :x , :o],
#     [:x, :o , :x],
#     [:o, :x , :o]
# ]) # false

# p squarocol?([
#     [1, 2, 2, 7],
#     [1, 6, 6, 7],
#     [0, 5, 2, 7],
#     [4, 2, 9, 7]
# ]) # true

# p squarocol?([
#     [1, 2, 2, 7],
#     [1, 6, 6, 0],
#     [0, 5, 2, 7],
#     [4, 2, 9, 7]
# ]) # false

def squaragonal?(mat)
    left_to_bottom = []
    right_to_bottom = []

    (0...mat.length).each {|rowIdx|
        left_to_bottom << mat[rowIdx][rowIdx]
        right_to_bottom << mat[rowIdx][mat.length-1-rowIdx]
    }

    left_to_bottom.all? {|ele| ele == left_to_bottom[0]} || right_to_bottom.all? {|ele| ele == right_to_bottom[0]}

end

# p squaragonal?([
#     [:x, :y, :o],
#     [:x, :x, :x],
#     [:o, :o, :x]
# ]) # true

# p squaragonal?([
#     [:x, :y, :o],
#     [:x, :o, :x],
#     [:o, :o, :x]
# ]) # true

# p squaragonal?([
#     [1, 2, 2, 7],
#     [1, 1, 6, 7],
#     [0, 5, 1, 7],
#     [4, 2, 9, 1]
# ]) # true

# p squaragonal?([
#     [1, 2, 2, 5],
#     [1, 6, 5, 0],
#     [0, 2, 2, 7],
#     [5, 2, 9, 7]
# ]) # false

def pascals_triangle(n)
    res_arr = [[1]]

    (1...n).each {|rowIdx|
        prev_row = res_arr[rowIdx-1]
        new_row = []
        (0..rowIdx).each {|colIdx|
            if colIdx == 0
                new_row << prev_row[0]
            elsif colIdx == rowIdx
                new_row << prev_row[-1]
            else
                new_row << prev_row[colIdx-1] + prev_row[colIdx]
            end
    
        }
        res_arr << new_row
    }
    res_arr
end

p pascals_triangle(7)