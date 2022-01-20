/// -----------------------------------------------
/// 30-Day LeetCoding Challenge - 1-30th april 2020
/// -----------------------------------------------
/// https://leetcode.com/explore/other/card/30-day-leetcoding-challenge

// Day first
//
// https://leetcode.com/problems/single-number/
//
// Single Number
// Given a non-empty array of integers, every element appears twice except for one. Find that single one.
//
// Note:
//
// Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?
//
// Example 1:
//
// Input: [2,2,1]
// Output: 1
// Example 2:
//
// Input: [4,1,2,1,2]
// Output: 4

let firstArray = [2,2,1]
let secondArray = [4,1,2,1,2]
let thirdArray = [3,7,8,3,7]

class Solution {
    
    // First solution
    
    func singleNumber(_ nums: [Int]) -> Int {
        
        var dictionary = [Int: Int]()
        
        for element in nums {
            if dictionary[element] != nil {
                dictionary[element] = 2
            } else {
                dictionary[element] = 1
            }
        }
        
        return dictionary.first(where: { $0.value == 1 })!.key
    }
    
    // Second solution
    
    func singleNumberSimple(_ nums: [Int]) -> Int {
        
        let set = Set(nums)
        let setSum = set.reduce(0, +) * 2
        let sumArray = nums.reduce(0, +)
        
        return setSum - sumArray
    }
}


Solution().singleNumberSimple(firstArray)
