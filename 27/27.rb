def remove_element(nums, val)
  
    nums.delete(val)
    print(nums) 
end
    
    # テストケース
    puts remove_element([3,2,2,3], 3)  
    puts remove_element([0,1,2,2,3,0,4,2], 2)
    