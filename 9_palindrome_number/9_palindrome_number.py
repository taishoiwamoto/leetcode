class Solution:
    def isPalindrome(self, x: int) -> bool:
        x = str(x)
        forward = x 
        backward = x[::-1]

        return forward == backward

# Create an instance of the Solution class
solution = Solution()

# Call the isPalindrome method using the instance
print(solution.isPalindrome(121))
print(solution.isPalindrome(-121))
print(solution.isPalindrome(10))