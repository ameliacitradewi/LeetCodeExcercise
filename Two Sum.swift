/// Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
/// You may assume that each input would have exactly one solution, and you may not use the same element twice.
/// You can return the answer in any order.

var data = [-2, 5, 2, 3, 8, 7]
var target = 7

// MARK: BRUTE FORCE O(n²)
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0..<nums.count {
            for j in (i + 1)..<nums.count {
                if nums[i] + nums[j] == target {
                    return [i, j]
                }
            }
        }

        return []
    }
}

/// EXPLANATION
/// Brute force approach is make sense to be used if the datasize smaller or you're not allowed to use extra memory. For example, if the device low-memory, embedded system, and constraint memory, then this approach would be better to use.
/// This also will run faster in smaller input, and effective if this function called only once, not in the big loop, and non performance-critical function.
/// This approach also can be used if you want to find more than 1 solution.

// MARK: TIME & SPACE COMPLEXITY O(n)
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var valueToIndex = [Int: Int]()
        
        for (currentIndex, currentValue) in nums.enumerated() {
            let neededValue = target - currentValue
            
            if let matchedIndex = valueToIndex[neededValue] {
                return [matchedIndex, currentIndex]
            }
            valueToIndex[currentValue] = currentIndex
        }
        
        return []
    }
}

/// EXPLAINATION:
/// nums.enumerated() return (currentIndex, currentValue). For example, in first loop it returns: index = 0, value = -2
/// "let neededValue = target - currentValue" means we have to determine the number that we need to find to achieve the target number with current number from loop. For example, in first index we have -2, so we need to find 9 in our array to get 7.
/// "let matchedIndex = valueToIndex[neededValue]" means we checked that if 9 as our neededValue was already in dict valueToIndex or not. If not, we skip the return and go to next row.
/// next row is "valueToIndex[currentValue] = currentIndex", where we put this number and its index into the dictionary, so we can use this number if applicable in next iteration. For this example, we save valueToIndex = [-2 : 0], which each int are for value and index.
/// In second iteration, we have 5 and we need to find 2. We checked the dictnioary again, to find number 2. This number also was not in dictionary, so we save this number to dict, so current valueToIndex = [-2:0, 5:1]
/// In third iteration, we have 2 in index 2 and we need to find 5. This number was already available in our valueToIndex, so we get matchedIndex = 1, and therefore we run the return line as [1, 2] as our final output.
/// This approach is optimal for medium to large inputs, need to fast lookup, big loop and a part of critital-performance, called more than once, because by using hashmap.
/// But, it should be only acceptable if we only need 1 solution, memory acceptable, because by using dict means we use more memory to put this data.
/// use a hash map when input size is large and constant-time lookups significantly reduce overall complexity. The trade-off of O(n) space is acceptable in exchange for O(n) time.


/// RULE OF THUMB:
/// n ≤ 50 → brute force OK
/// n ≥ 100 → consideration to use hashmap
/// n ≥ 1_000 → hashmap mandatory


// MARK: Test Result
let solution = Solution()
let result = solution.twoSum(data, target)
print(result)

