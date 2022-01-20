/// -----------------------------------------------
/// 30-Day LeetCoding Challenge - 1-30th april 2020
/// -----------------------------------------------
/// https://leetcode.com/explore/other/card/30-day-leetcoding-challenge

// Day third
//
// https://leetcode.com/problems/maximum-subarray/
//
//    Maximum Subarray
//    Given an integer array nums, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.
//
//    Example:
//
//    Input: [-2,1,-3,4,-1,2,1,-5,4],
//    Output: 6
//    Explanation: [4,-1,2,1] has the largest sum = 6.
//    Follow up:
//
//    If you have figured out the O(n) solution, try coding another solution using the divide and conquer approach, which is more subtle.

let zeroArray = [-2, 1, -3, 4, -1, 2, 1, -5, 4]             // result 6
let firstArray = [-2, 1, -3, 4, -1, 2, 1, -5, 4, 3]         // result 8
let secondArray = [-5, 3, 6, -10, 43, -87, -2, 50, 47, -13] // result 97
let thirdArray = [-4, 3, 2, -1, 5]                          // result 9
let fourthArray = [-2, -3, -1]                              // result -1
let fifthArray = [8, -19, 5, -4, 20]                        // result 21
let sixthArray = [0, -3, 1, 1]                              // result 2
let sevethArray = [0, -2, 0]                                // result 0

// First fast solution

class Solution {
    
    func maxSubArray(_ nums: [Int]) -> Int {
        
        guard !nums.isEmpty else { return 0 }
        
        var result = nums.first!
        var previous = result
        
        for index in 1 ..< nums.count {
            if previous > 0 {
                previous += nums[index]
            } else {
                previous = nums[index]
            }
            result = max(result, previous)
        }
        
        return result
    }
}
    
// Second short solution
    
class Solution2 {
    
    func maxSubArray2(_ nums: [Int]) -> Int {
        if nums.isEmpty { return 0 }
        
        var maxNum = nums[0]
        var last = 0
        
        for n in nums {
            last = max(last + n, n)
            maxNum = max(maxNum, last)
        }
        
        return maxNum
    }
}

print(Solution().maxSubArray(firstArray))
