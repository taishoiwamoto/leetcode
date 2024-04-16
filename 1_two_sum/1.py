class Solution:
    def twoSum(self, nums: list[int], target: int) -> list[int]:
        hash_map = {}
        for index, num in enumerate(nums):
            complement = target - num
            if complement in hash_map:
                return [hash_map[complement], index]
            hash_map[num] = index
        return None

# Solutionクラスのインスタンスを作成
solution = Solution()

# テストケースの実行と出力
print(solution.twoSum([2, 7, 11, 15], 9))  # => [0, 1]
print(solution.twoSum([3, 2, 4], 6))       # => [1, 2]
print(solution.twoSum([3, 3], 6))          # => [0, 1]
