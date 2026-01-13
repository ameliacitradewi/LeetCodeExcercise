/// You are given an m x n integer grid accounts where accounts[i][j] is the amount of money the i​​​​​​​​​​​th​​​​ customer has in the j​​​​​​​​​​​th​​​​ bank. Return the wealth that the richest customer has.
/// A customer's wealth is the amount of money they have in all their bank accounts. The richest customer is the customer that has the maximum wealth.

var accounts1 = [[1,2,3],[3,2,1]] // output: 6
var accounts2 = [[1,5],[7,3],[3,5]] // output: 10

class Solution {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        var total = [Int]()
        
        for i in accounts {
            total.append(i.reduce(0, +))
        }
        
        return total.max()!
    }
}

let solution = Solution()
print(solution.maximumWealth(accounts1))
print(solution.maximumWealth(accounts2))

// this beats runtime 100% and memory 94,52%
class Solution2 {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        var maxWealth = 0
        
        for i in accounts {
            let wealth = i.reduce(0, +)
            maxWealth = max(maxWealth, wealth)
        }
        
        return maxWealth
    }
}

let solution2 = Solution2()
print(solution2.maximumWealth(accounts1))
print(solution2.maximumWealth(accounts2))

class Solution3 {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        return accounts.map { $0.reduce(0, +) }.max() ?? 0
    }
}

let solution3 = Solution3()
print(solution3.maximumWealth(accounts1))
print(solution3.maximumWealth(accounts2))

