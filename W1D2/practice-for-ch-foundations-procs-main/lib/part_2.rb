def reverser(str, &prc)
    return prc.call(str.reverse)
end

def word_changer(sent, &prc)
    sent.split(" ").map {|word| prc.call(word)}.join(" ")
end

def greater_proc_value(num, prc1, prc2)
    prc1_res = prc1.call(num)
    prc2_res = prc2.call(num)
    [prc1_res, prc2_res].max
end

def and_selector(arr, prc1, prc2)
    arr.select {|ele| prc1.call(ele) and prc2.call(ele)}
end

def alternating_mapper(arr, prc1, prc2)
    arr.map.with_index {|ele, idx|
        if idx.even?
            prc1.call(ele)
        else 
            prc2.call(ele)
        end
    }
end