/// -----------------------------------------------
/// 30-Day LeetCoding Challenge - 1-30th april 2020
/// -----------------------------------------------
/// https://leetcode.com/explore/other/card/30-day-leetcoding-challenge

// Day fouth
//
// https://leetcode.com/explore/challenge/card/30-day-leetcoding-challenge/528/week-1/3286/
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

//    Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.
//
//    Example:
//
//    Input: [0,1,0,3,12]
//    Output: [1,3,12,0,0]
//    Note:
//
//    You must do this in-place without making a copy of the array.
//    Minimize the total number of operations.

var firstArray = [0, 1, 0, 3, 12]            // result [1, 3, 12, 0, 0]
var secondArray = [1, 56, 3, 4, 5, 0, 3, 0, 0, 3]
var thirdArray = [1]

// First short solution - O(n^2)

class Solution {
    
    func moveZeroes(_ nums: inout [Int]) {
        
        var counter = 0
        
        for (index, element) in nums.enumerated() {
            if element == 0 {
                nums.remove(at: index  - counter)
                nums.append(0)
                counter += 1
            }
        }
    }
}

// Second fast solution - O(n)

class Solution2 {
    func moveZeroes(_ nums: inout [Int]) {
        
        var index = 0
        
        for i in 0..<nums.count {
            if index < i {
                index = i
            }

            guard nums[i] == 0 else { continue }
            
            while index < nums.count, nums[index] == 0 {
                index += 1
            }
            
            if index < nums.count {
                nums[i] = nums[index]
                nums[index] = 0
            }
            
            if index == nums.count {
                break
            }
        }
    }
}

print(Solution().moveZeroes(&firstArray))
