def roman_to_int(s)
    # Mapping of Roman numerals to their integer values
    values = {
      'I' => 1,
      'V' => 5,
      'X' => 10,
      'L' => 50,
      'C' => 100,
      'D' => 500,
      'M' => 1000
    }
  
    # Initialize the total result of the conversion
    total = 0
  
    # Loop through the string from left to right
    i = 0
    while i < s.length
      # If the current character has a lower value than the next character, it means this is a subtractive combination
      if i + 1 < s.length && values[s[i]] < values[s[i + 1]]
        total += values[s[i + 1]] - values[s[i]]
        # Skip the next character since it was part of a subtractive combination
        i += 2
      else
        # Otherwise, just add the value of the current character to the total
        total += values[s[i]]
        i += 1
      end
    end
  
    total
  end
  
  puts roman_to_int("III")    # Output: 3
  puts roman_to_int("LVIII")  # Output: 58
  puts roman_to_int("MCMXCIV")# Output: 1994