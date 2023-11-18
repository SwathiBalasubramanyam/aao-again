

is_even = Proc.new {|num| num % 2 == 0}

def add_and_is_even(num1, num2, prc)
    sum = num1 + num2

    prc.call(sum)
end

p add_and_is_even(2,3, is_even)