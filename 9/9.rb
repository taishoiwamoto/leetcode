def is_palindrome(x)
    x = x.to_s
    forward = x
    backward = x.reverse

    forward == backward
end

puts(is_palindrome(121))
puts(is_palindrome(-121))
puts(is_palindrome(10))