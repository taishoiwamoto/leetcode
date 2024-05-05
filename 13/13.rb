def roman_to_int(s)
    values = {
        "I" => 1,
        "V" => 5,
        "X" => 10,
        "L" => 50,
        "C" => 100,
        "D" => 500,
        "M" => 1000,
    }

    total = 0
    i = 0

    # continues until it reaches the string number
    while i < s.length
        # subtract a number when the other number is bigger
        if i + 1 < s.length && values[s[i]] < values[s[i + 1]]
            total += values[s[i + 1]] - values[s[i]]
            i += 2
        # add two numbers
        else   
            total += values[s[i]]
            i += 1
        end
    end
    # return total number
    total

  end
  
  puts roman_to_int("III")    # Output: 3
  puts roman_to_int("LVIII")  # Output: 58
  puts roman_to_int("MCMXCIV")# Output: 1994