/// Given an array of integers arr, return true if the number of occurrences of each value in the array is unique or false otherwise.

var arr1 = [1,2,2,1,1,3] // output: true
var arr2 = [1,2] // output: false
var arr3 = [-3,0,1,-3,1,1,1,-3,10,0] // output: true

// low time, high memory
// best solution
class Solution {
    func uniqueOccurrences(_ arr: [Int]) -> Bool {
        var freqMap = [Int: Int]()
        
        for num in arr {
            freqMap[num, default: 0] += 1
        }
        
        let occurences = Set(freqMap.values)
        return occurences.count == freqMap.count
        
    }
}

// low memory, high time
class Solution2 {
    func uniqueOccurrences(_ arr: [Int]) -> Bool {
        var freqMap = [Int: Int]()
        var seen = Set<Int>()
        
        for num in arr {
            freqMap[num, default: 0] += 1
        }
        
        for count in freqMap.values {
            if seen.contains(count) {
                return false
            }
            seen.insert(count)
        }
        
        return true
        
    }
}


let solution = Solution()
print(solution.uniqueOccurrences(arr1))
print(solution.uniqueOccurrences(arr2))
print(solution.uniqueOccurrences(arr3))

let solution2 = Solution2()
print(solution2.uniqueOccurrences(arr1))
print(solution2.uniqueOccurrences(arr2))
print(solution2.uniqueOccurrences(arr3))
