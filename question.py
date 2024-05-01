# 問題：配列が二つあり、ターゲットがあり、それぞれの配列から11になる組み合わせを探す。
# ヒント：ハッシュを使う
# [1, 5, 3, 8]
# [3, 9, 4, 11]
# target = 11

# 考え方： ターゲットと数字の差を算出して、その差が他の配列の数字に含まれるか確認する。

class Solution:
    def Sum(self, numbers: list[int], target: int):
        hash_map = {}
        # インデックスと数字を取り出す
        # enumerate()は、インデックスと要素を同時に取得する関数
        for index, number in enumerate(numbers):
            # ターゲットから数字を引いて、残りの数を算出する
            remaining = target - number
            # 残りの数が、既にハッシュにある場合
            if remaining in hash_map:
                # 残りの数と現在の数を返す（配列の中で、合わせてターゲット数になる組み合わせを返す）
                return [remaining, number]
            # 残りの数が、既にハッシュにない場合、現在の数をキー・そのインデックスを値としてハッシュに追加する
            hash_map[number] = index
        return "配列の中で、合わせてターゲット数になる組み合わせなし";

# インスタンスを作成して、Sumメソッドにアクセス。配列とターゲットをSumメソッドに渡す
solution = Solution()
print(solution.Sum([1, 5, 3, 8], 11)) 
print(solution.Sum([3, 9, 4, 11], 11))
