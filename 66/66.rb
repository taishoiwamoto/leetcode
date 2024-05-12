def plus_one(digits)
    (digits.join.to_i + 1).to_s.split('').map { |s| s.to_i }
end

puts plus_one([1,2,3])
puts plus_one([4,3,2,1])
puts plus_one([9])