/// A school is trying to take an annual photo of all the students. The students are asked to stand in a single file line in non-decreasing order by height. Let this ordering be represented by the integer array expected where expected[i] is the expected height of the ith student in line.
/// You are given an integer array heights representing the current order that the students are standing in. Each heights[i] is the height of the ith student in line (0-indexed).
/// Return the number of indices where heights[i] != expected[i].

var nums1 = [1,1,4,2,1,3] // output: 3
var nums2 = [5,1,2,3,4] // output: 5

class Solution {
    func heightChecker(_ heights: [Int]) -> Int {
        var total = 0
        var heightSorted = heights.sorted()
        
        for i in 0..<heights.count {
            if heights[i] != heightSorted[i] {
                total += 1
            }
        }
        
        return total
    }
}


let solution = Solution()
print(solution.heightChecker(nums1))
print(solution.heightChecker(nums2))
