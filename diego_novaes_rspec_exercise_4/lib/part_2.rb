require "byebug"

def proper_factors(num)
    divisors = []
    (1...num).each { |x| divisors << x if num % x == 0 }
    divisors
end

# p proper_factors(6) # => [1,2,3]
# p proper_factors(12) # => [1,2,3,4,6]
# p proper_factors(9) # => [1,3]

def aliquot_sum(num)
    proper_factors(num).sum
end

# p aliquot_sum(6) # => 6
# p aliquot_sum(12) # => 16
# p aliquot_sum(6) # => 6

def perfect_number?(num)
    num == aliquot_sum(num)
end

# p perfect_number?(6) # => true
# p perfect_number?(9) # => false
# p perfect_number?(12) # => false
# p perfect_number?(28) # => true

def ideal_numbers(num)
    result = []
    i=1
    while result.length < num
        # debugger
        result << i if perfect_number?(i)
        i+=1
    end
    result
end

# p ideal_numbers(2) # => [6, 28]
# p ideal_numbers(3) # => [6, 28, 496]