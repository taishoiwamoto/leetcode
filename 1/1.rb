# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

def two_sum(nums, target)
    hash = {}
    nums.each_with_index do |num, index|
        complement = target - num
        if hash.has_key?(complement)
            return [hash[complement], index]
        end
        hash[num] = index
    end
    nil
end

puts two_sum([2, 7, 11, 15], 9).inspect # => [0, 1]
puts two_sum([3, 2, 4], 6).inspect      # => [1, 2]
puts two_sum([3, 3], 6).inspect         # => [0, 1]