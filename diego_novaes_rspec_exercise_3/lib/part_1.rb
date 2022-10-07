def is_prime?(num)
    return false if num < 2
    (2...num).each do |factor|
        if num % factor == 0
            return false
        end
    end
    return true
end


def nth_prime(num)
    count = 0
    x = -1
    until count == num
        x+=1
        count +=1 if is_prime?(x)
    end
    x
end


def prime_range(min,max)
    primes = []
        (min..max).each { |x| primes << x if is_prime?(x) }
    primes
end