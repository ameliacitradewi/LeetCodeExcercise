var nums1 = [1,2,2,1]
var nums2 = [2,2]
var nums3 = [4,9,5]
var nums4 = [9,4,9,8,4]

class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var result = [Int]()
        
        let small = nums1.count < nums2.count ? nums1 : nums2
        let large = nums1.count < nums2.count ? nums2 : nums1
        
        var freqMap = [Int : Int]()
        
        for num in small {
            freqMap[num, default: 0] += 1
        }
        
        for num in large {
            if let count = freqMap[num], count > 0 {
                result.append(num)
                freqMap[num] = count - 1
            }
        }
        
        return result
    }
}

let solution = Solution()
print(solution.intersect(nums1, nums2)) // output: [2,2]
print(solution.intersect(nums3, nums4)) // output: [4,9]
