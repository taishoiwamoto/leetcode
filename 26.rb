def remove_duplicates(nums)
    # 配列が空、または一つの要素のみを含む場合は、その長さをそのまま返す
    return nums.length if nums.length <= 1
  
    # `i` はユニークな要素のインデックスを追跡
    i = 0
  
    # `j` は配列を走査するインデックス
    (1...nums.length).each do |j|
      # 現在の要素と前の要素が異なる場合、ユニークな要素として扱う
      if nums[j] != nums[i]
        i += 1      # `i` をインクリメントして新しいユニークな要素の位置を指定
        nums[i] = nums[j]  # ユニークな要素を `i` の位置に移動
      end
    end
  
    # ユニークな要素の数は `i + 1`（インデックス `i` は0から始まるため）
    i + 1
  end
  
  # テストケース
  puts remove_duplicates([1,1,2])  # 出力: 2
  puts remove_duplicates([0,0,1,1,1,2,2,3,3,4])  # 出力: 5
  
  [0, 1, 2, 3, 4, 2, 2, 3, 3, 4]