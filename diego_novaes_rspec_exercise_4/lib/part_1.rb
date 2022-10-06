even = Proc.new { |n| n.even? }
div_by_5 = Proc.new { |n| n % 5 == 0 }
positive = Proc.new { |n| n > 0 }

############################################################


def my_reject(arr, &prc)
    result = []
    arr.each { |num| result << num if !prc.call(num)  }
    result
end

def my_one?(arr, &prc)
    result = Hash.new(0)
    arr.each { |num| result[prc.call(num)] += 1  }
    result[true] == 1
end

def hash_select(hash,&prc)
    result = Hash.new(0)
    hash.each { |k,v| result[k] = v if prc.call(k,v)  }
    result
end

# p hash_select({"a"=>0, "b"=>1, "c"=> 2, "o"=>14}) { |k, v| "aeiou".include?(k) }
# p hash_select({"a"=>0, "b"=>1, "c"=> 2, "o"=>14}) { |k, v| v.even? }

def xor_select(arr, prc1, prc2)
    result = []
    arr.each { |num| result << num if prc1.call(num) ^ prc2.call(num)  }
    result
end

# p xor_select([2, 5, 3, 7, 6, -8, -1], even, positive)

def proc_count(num, prc)
    count = 0
    prc.each { |x| count += 1 if x.call(num) }
    count
end



# p proc_count(12, [even, div_by_5, positive]) # => 2