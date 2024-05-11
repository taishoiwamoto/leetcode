# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
    # numsの中に、targetがあるかどうかの判断
    if nums.include?(target)
        # あれば、numsの中にあるtargetのindexを返す
        nums.find_index(target)
    else
        # なければ、numsにtargetを挿入する
        nums.push(target)
        # numsを順番に並べる
        new_nums = nums.sort
        # numsを順番に並べた際の、targetのindexを返す
        new_nums.find_index(target)
    end
end
    
puts search_insert([1,3,5,6], 5)  
puts search_insert([1,3,5,6], 2)
puts search_insert([1,3,5,6], 7)