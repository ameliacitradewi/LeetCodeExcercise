/// Given the array nums consisting of 2n elements in the form [x1,x2,...,xn,y1,y2,...,yn].
/// Return the array in the form [x1,y1,x2,y2,...,xn,yn].

var nums1 = [2,5,1,3,4,7]
var n1 = 3

var nums2 = [1,2,3,4,4,3,2,1]
var n2 = 4

var nums3 = [1,1,2,2]
var n3 = 2


class Solution {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        var result = [Int]()
        
        let half = nums.count / 2
        
        for i in 0..<half {
            result.append(nums[i])
            result.append(nums[i + half])
        }
        return result
    }
}

let solution = Solution()
print(solution.shuffle(nums1, n1)) // output: [2,3,5,4,1,7]
print(solution.shuffle(nums2, n2)) // output: [1,4,2,3,3,2,4,1]
print(solution.shuffle(nums3, n3)) // output: [1,2,1,2]
