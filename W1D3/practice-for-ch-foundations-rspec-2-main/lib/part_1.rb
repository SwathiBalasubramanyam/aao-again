def partition(arr, num)
    return [arr.select {|ele| ele < num}, arr.select {|ele| ele >= num}]
end

def merge(hash1, hash2)
    res_hash = {}
    hash1.each {|k, v| res_hash[k] = v}
    hash2.each {|k, v| res_hash[k] = v}
    res_hash
end

def replace_vowels(word)
    word.split("").map{|char| "aeiou".include?(char.downcase) ? "*": char}.join("")
end

def censor(sentence, arr)
    sentence.split(" ").map{|word|
        arr.include?(word.downcase) ? replace_vowels(word) : word}.join(" ")
end

def power_of_two?(number)
    product = 1
    while product < number
        product *= 2
    end
    product == number
end