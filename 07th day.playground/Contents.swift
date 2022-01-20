/// -----------------------------------------------
/// 30-Day LeetCoding Challenge - 1-30th april 2020
/// -----------------------------------------------
/// https://leetcode.com/explore/other/card/30-day-leetcoding-challenge

// Day seventh
//
// https://leetcode.com/explore/challenge/card/30-day-leetcoding-challenge/528/week-1/3289
//
//    Counting Elements
//
//    Given an integer array arr, count element x such that x + 1 is also in arr.
//
//    If there're duplicates in arr, count them seperately.
//
//    Example 1:
//
//    Input: arr = [1,2,3]
//    Output: 2
//    Explanation: 1 and 2 are counted cause 2 and 3 are in arr.
//    Example 2:
//
//    Input: arr = [1,1,3,3,5,5,7,7]
//    Output: 0
//    Explanation: No numbers are counted, cause there's no 2, 4, 6, or 8 in arr.
//    Example 3:
//
//    Input: arr = [1,3,2,3,5,0]
//    Output: 3
//    Explanation: 0, 1 and 2 are counted cause 1, 2 and 3 are in arr.
//    Example 4:
//
//    Input: arr = [1,1,2,2]
//    Output: 2
//    Explanation: Two 1s are counted cause 2 is in arr.
//
//
//    Constraints:
//
//    1 <= arr.length <= 1000
//    0 <= arr[i] <= 1000
//
//    Hint #1
//    Use hashset to store all elements.
//
//    Hint #2
//    Loop again to count all valid elements.

let arr1 = [1, 2, 3]                    // result 2 (1 -> 2 -> 3)
let arr2 = [1, 1, 3, 3, 5, 5, 7, 7]     // result 0
let arr3 = [1, 3, 2, 3, 5, 0]           // result 3 (0 -> 1 -> 2 -> 3)
let arr4 = [1, 1, 2, 2]                 // result 2 (1 -> 2, 1 -> 2)
let arr5 = [1, 1, 2]                    // result 2

print(Solution().countElements3(arr1))

// First short & slow solution - O(n^2)

class Solution {
    func countElements3(_ arr: [Int]) -> Int {
        return arr.filter{ arr.contains($0 + 1)}.count
    }
}

// Second fast solution - O(n)

class Solution2 {
    func countElements(_ arr: [Int]) -> Int {
        
        var dict = [Int: Int]()
        var counter = 0
        
        for n in arr {
            if dict[n] == nil {
                dict[n] = 1
            } else {
                dict[n]! += 1
            }
        }
        
        for k in arr where dict[k + 1] != nil {
            counter += 1
        }
        return counter
    }
}
