def all_words_capitalized?(arr)
    arr.all? {|ele| 
        (ele[0].upcase + ele[1..-1].downcase) == ele
    }
end

def no_valid_url?(arr)
    arr.none? {|ele| ele.end_with?(".com") || ele.end_with?(".net") || ele.end_with?(".io") || ele.end_with?(".org")}
end

def any_passing_students?(arr)
    arr.any? {|student| (student[:grades].sum / student[:grades].length) >= 75}
end