def longest_common_prefix(strs)
  
    # 最初の文字列を基準にして、その各文字に対して縦走査を行う
    for i in 0...strs[0].length
      # 基準文字列のi番目の文字
      char = strs[0][i]
  
      # 他のすべての文字列に対して、i番目の文字がcharと同じか確認
      strs[1..].each do |str|
        # iが文字列の長さを超えているか、文字が一致しなければ終了
        return strs[0][0...i] if i == str.length || str[i] != char
      end
    end
  
    # 全ての文字列が最初の文字列と完全に一致する場合、そのまま返す
    strs[0]
  end
  
  # テストケース
  puts longest_common_prefix(["flower", "flow", "flight"]) # => "fl"
  puts longest_common_prefix(["dog", "racecar", "car"])    # => ""