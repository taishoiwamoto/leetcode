class Solution:
    def longestCommonPrefix(self, strs):
        if not strs:
            return ""
        
        # 最初の文字列を基準にして、その各文字に対して縦走査を行う
        for i in range(len(strs[0])):
            # 基準文字列のi番目の文字
            char = strs[0][i]
            
            # 他のすべての文字列に対して、i番目の文字がcharと同じか確認
            for s in strs[1:]:
                # iが文字列の長さを超えているか、文字が一致しなければ終了
                if i == len(s) or s[i] != char:
                    return strs[0][:i]
        
        # 全ての文字列が最初の文字列と完全に一致する場合、そのまま返す
        return strs[0]

# インスタンス作成とメソッド呼び出し
solution = Solution()
print(solution.longestCommonPrefix(["flower", "flow", "flight"]))
print(solution.longestCommonPrefix(["dog", "racecar", "car"]))