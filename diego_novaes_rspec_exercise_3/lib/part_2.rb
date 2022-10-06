def element_count(elements)
    result = Hash.new(0)
    elements.each { |ele| result[ele] += 1 }
    result
end

def char_replace!(str,hash)
    # to not mutate a original str's characters you must make changes using their indeces
    str.each_char.with_index { |char,i| hash.has_key?(char) ? str[i] = hash[char] : char }
end

def product_inject(arr)
    arr.inject { |acc,ele| acc *= ele }
end