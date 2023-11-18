def select_even_nums(arr)
    arr.select {|ele| ele.even?}
end

def reject_puppies(arr)
    arr.reject {|ele| ele["age"] <= 2}
end

def count_positive_subarrays(arr)
    arr.count {|ele| ele.sum > 0}
end

def aba_translate(word)
    word.split("").map {|char|
        if "aeiou".include?(char)
            char + "b" + char 
        else
            char
        end
    }.join("")
end

def aba_array(arr)
    arr.map {|ele| aba_translate(ele)}
end