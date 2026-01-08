/// You are given an integer array `order` of length `n` and an integer array `friends`.
/// - `order` contains every integer from `1` to `n` exactly once,
///   representing the IDs of race participants in their finishing order.
/// - `friends` contains the IDs of your friends in the race,
///   sorted in strictly increasing order.
/// - Each ID in `friends` is guaranteed to appear in the `order` array.
///
/// - Returns:
///   An array containing your friends' IDs in the order they finished the race.

var order1 = [3,1,2,5,4]
var friends1 = [1,3,4]
var order2 = [1,4,5,3,2]
var friends2 = [2,5]

class Solution {
    func recoverOrder(_ order: [Int], _ friends: [Int]) -> [Int] {
        var result = [Int]()
        for i in 0..<order.count {
            if friends.contains(order[i]) {
                result.append(order[i])
            }
        }
        
        return result
    }
}

let solution = Solution()
print(solution.recoverOrder(order1, friends1))
print(solution.recoverOrder(order2, friends2))
