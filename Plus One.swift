class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var digits = digits
        
        for i in stride(from: digits.count - 1, through: 0, by: -1) {
            if digits[i] < 9 {
                digits[i] += 1
                return digits
            }
            digits[i] = 0
        }
        
        // If we reach here, all digits were 9
        digits.insert(1, at: 0)
        return digits
    }
}
