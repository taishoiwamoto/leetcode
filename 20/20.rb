def is_valid(s)
    stack = []
    mapping = {')' => '(', '}' => '{', ']' => '['}

    s.each_char do |char|
        if mapping.value?(char)
            stack.push(char)
        elsif mapping.key?(char)
            top_element = stack.empty? ? '#' : stack.pop
            if mapping[char] != top_element
                return false
            end
        else
            return false
        end
    end

    stack.empty?
end

puts is_valid("()")
puts is_valid("()[]{}")
puts is_valid("(]")
