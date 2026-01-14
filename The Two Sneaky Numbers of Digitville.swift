/// In the town of Digitville, there was a list of numbers called nums containing integers from 0 to n - 1. Each number was supposed to appear exactly once in the list, however, two mischievous numbers sneaked in an additional time, making the list longer than usual.
/// As the town detective, your task is to find these two sneaky numbers. Return an array of size two containing the two numbers (in any order), so peace can return to Digitville.


var nums = [0,1,1,0] // output: [0,1]
var nums2 = [0,3,2,1,3,2] // output: [2,3]
var nums3 = [7,1,5,4,3,4,6,0,9,5,8,2] // output: [4,5]

class Solution {
    func getSneakyNumbers(_ nums: [Int]) -> [Int] {
        var freqMap = [Int:Int]()
        var result = [Int]()
        
        for num in nums {
            freqMap[num, default: 0] += 1
        }
        
        for (key, value) in freqMap {
            if value == 2 {
                result.append(key)
            }
        }
        
        return result
    }
}

let solution = Solution()
print(solution.getSneakyNumbers(nums))
print(solution.getSneakyNumbers(nums2))
print(solution.getSneakyNumbers(nums3))
