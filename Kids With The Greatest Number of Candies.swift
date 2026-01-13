/// Determines which kids can have the greatest number of candies after receiving extra candies.
///
/// Given an array `candies` where each element represents the number of candies a kid has,
/// and an integer `extraCandies`, this function checks for each kid whether giving them
/// all the extra candies would make their total candies greater than or equal to
/// the maximum candies any kid currently has.
///
/// - Parameters:
///   - candies: An array of integers representing the candies each kid has.
///   - extraCandies: The number of extra candies available.
/// - Returns: A boolean array where each element is `true` if the corresponding kid
///   can have the greatest number of candies, or `false` otherwise.
///
/// ### Examples
/// ```
/// Input: candies = [2,3,5,1,3], extraCandies = 3
/// Output: [true, true, true, false, true]
///
/// Input: candies = [4,2,1,1,2], extraCandies = 1
/// Output: [true, false, false, false, false]
///
/// Input: candies = [12,1,12], extraCandies = 10
/// Output: [true, false, true]
/// ```

var candies1 = [2,3,5,1,3]
var extra1 = 3

var candies2 = [4,2,1,1,2]
var extra2 = 1

var candies3 = [12,1,12]
var extra3 = 10

class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        guard let maxCandies = candies.max() else { return [] }
        
        var result = [Bool]()
        
        for i in candies {
            if i + extraCandies >= maxCandies {
                result.append(true)
            } else {
                result.append(false)
            }
        }
        
        return result
    }
}

let solution = Solution()
print(solution.kidsWithCandies(candies1, extra1)) // output: [true, true, true, false, true]
print(solution.kidsWithCandies(candies2, extra2)) // output: [true, false, false, false, false]
print(solution.kidsWithCandies(candies3, extra3)) // output: [true, false, true]


class Solution2 {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        guard let maxCandies = candies.max() else { return [] }
        
        var result = Array(repeating: false, count: candies.count)
        
        for i in 0..<candies.count {
            result[i] = candies[i] + extraCandies >= maxCandies
        }
        
        return result
    }
}

let solution2 = Solution2()
print(solution2.kidsWithCandies(candies1, extra1)) // output: [true, true, true, false, true]
print(solution2.kidsWithCandies(candies2, extra2)) // output: [true, false, false, false, false]
print(solution2.kidsWithCandies(candies3, extra3)) // output: [true, false, true]


class Solution3 {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        guard let maxCandies = candies.max() else { return [] }
        
        return candies.map { $0 + extraCandies >= maxCandies}
    }
}

let solution3 = Solution3()
print(solution3.kidsWithCandies(candies1, extra1)) // output: [true, true, true, false, true]
print(solution3.kidsWithCandies(candies2, extra2)) // output: [true, false, false, false, false]
print(solution3.kidsWithCandies(candies3, extra3)) // output: [true, false, true]
