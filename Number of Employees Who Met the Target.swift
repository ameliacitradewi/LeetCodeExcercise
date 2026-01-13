/// There are n employees in a company, numbered from 0 to n - 1. Each employee i has worked for hours[i] hours in the company.
/// The company requires each employee to work for at least target hours.
/// You are given a 0-indexed array of non-negative integers hours of length n and a non-negative integer target.
/// Return the integer denoting the number of employees who worked at least target hours.

var hours1 = [0,1,2,3,4]
var target1 = 2 // output: 3

var hours2 = [5,1,4,2,2]
var target2 = 6 // output: 0

class Solution {
    func numberOfEmployeesWhoMetTarget(_ hours: [Int], _ target: Int) -> Int {
        return hours.count(where: { $0 >= target })
    }
}

let solution = Solution()
print(solution.numberOfEmployeesWhoMetTarget(hours1, target1))
print(solution.numberOfEmployeesWhoMetTarget(hours2, target2))
