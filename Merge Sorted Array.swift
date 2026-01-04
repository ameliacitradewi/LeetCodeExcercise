var nums1 = [1,2,3,0,0,0]
var m = 3
var nums2 = [2,5,6]
var n = 3

class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var editedNums1 = [Int]()
        for i in 0..<m {
            editedNums1.append(nums1[i])
        }
        
        for j in 0..<n {
            editedNums1.append(nums2[j])
        }
        
        nums1 = editedNums1.sorted()
    }
}

let solution = Solution()
solution.merge(&nums1, m, nums2, n)
print(nums1)
