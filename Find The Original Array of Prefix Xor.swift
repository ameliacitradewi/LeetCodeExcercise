/// You are given an integer array pref of size n. Find and return the array arr of size n that satisfies:
/// pref[i] = arr[0] ^ arr[1] ^ ... ^ arr[i].
/// Note that ^ denotes the bitwise-xor operation.
/// It can be proven that the answer is unique.
///
/// Example 1:
/// Input: pref = [5,2,0,3,1]
/// Output: [5,7,2,3,2]
/// Explanation: From the array [5,7,2,3,2] we have the following:
/// - pref[0] = 5.
/// - pref[1] = 5 ^ 7 = 2.
/// - pref[2] = 5 ^ 7 ^ 2 = 0.
/// - pref[3] = 5 ^ 7 ^ 2 ^ 3 = 3.
/// - pref[4] = 5 ^ 7 ^ 2 ^ 3 ^ 2 = 1.
///
/// Example 2:
/// Input: pref = [13]
/// Output: [13]
/// Explanation: We have pref[0] = arr[0] = 13.

var pref1 = [5,2,0,3,1]
var pref2 = [13]

class Solution {
    func findArray(_ pref: [Int]) -> [Int] {
        var arr = Array(repeating: 0, count: pref.count)
        arr[0] = pref[0]
        
        for i in 1..<pref.count {
            arr[i] = pref[i] ^ pref[i - 1]
        }
        
        return arr
        
    }
}

let solution = Solution()
print(solution.findArray(pref1)) // output: [5,7,2,3,2]
print(solution.findArray(pref2)) // output: [13]


