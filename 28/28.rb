def str_str(haystack, needle)
    return haystack.index(needle) != nil ? haystack.index(needle) : -1
end
    
# テストケース
puts str_str("sadbutsad", "sad")  
puts str_str("leetcode", "leeto")