var g = [1,2,3]
var s = [1,1]

var j = [1,2]
var k = [1,2,3]

class Solution {
    func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
        let greed = g.sorted()
        let cookies = s.sorted()
        
        var i = 0 // pointer for children
        var j = 0 // pointer for cookies
        var contentChildren = 0
        
        while i < greed.count && j < cookies.count {
            if cookies[j] >= greed[i] {
                // cookie satisfies child
                contentChildren += 1
                i += 1
                j += 1
            } else {
                // cookie too small, try a bigger one
                j += 1
            }
        }
        
        return contentChildren
    }
}

let solution = Solution()
print(solution.findContentChildren(g, s)) // output: 1
print(solution.findContentChildren(j, k)) // output: 2
