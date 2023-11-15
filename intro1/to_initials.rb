def to_initials(name)
    res = ""
    name.split(" ").each {|sub_name| res += sub_name[0]}
    return res
end

puts to_initials("Kelvin Bridges")      # => "KB"
puts to_initials("Michaela Yamamoto")   # => "MY"
puts to_initials("Mary La Grange")      # => "MLG"