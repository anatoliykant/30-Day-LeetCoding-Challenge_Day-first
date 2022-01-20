/// -----------------------------------------------
/// 30-Day LeetCoding Challenge - 1-30th april 2020
/// -----------------------------------------------
/// https://leetcode.com/explore/other/card/30-day-leetcoding-challenge

// Day fifth
//
// https://leetcode.com/problems/best-time-to-buy-and-sell-stock-ii/
//
//    Best Time to Buy and Sell Stock II
//
//    Say you have an array for which the ith element is the price of a given stock on day i.
//
//    Design an algorithm to find the maximum profit. You may complete as many transactions as you like (i.e., buy one and sell one share of the stock multiple times).
//
//    Note: You may not engage in multiple transactions at the same time (i.e., you must sell the stock before you buy again).
//
//    Example 1:
//
//    Input: [7,1,5,3,6,4]
//    Output: 7
//    Explanation: Buy on day 2 (price = 1) and sell on day 3 (price = 5), profit = 5-1 = 4.
//                 Then buy on day 4 (price = 3) and sell on day 5 (price = 6), profit = 6-3 = 3.
//    Example 2:
//
//    Input: [1,2,3,4,5]
//    Output: 4
//    Explanation: Buy on day 1 (price = 1) and sell on day 5 (price = 5), profit = 5-1 = 4.
//                 Note that you cannot buy on day 1, buy on day 2 and sell them later, as you are
//                 engaging multiple transactions at the same time. You must sell before buying again.
//    Example 3:
//
//    Input: [7,6,4,3,1]
//    Output: 0
//    Explanation: In this case, no transaction is done, i.e. max profit = 0.

var firstArray = [7, 1, 5, 3, 6, 4]         // result 7
var secondArray = [1, 2, 3, 4, 5]           // result 4
var thirdArray = [7, 6, 4, 3, 1]            // result 0
var fourthArray = [1, 2, 4, 2, 4, 2, 4, 5]  // result 7
var fifthArray = [Int]()                    // result 0
var sixthArray = [1]                        // result 0

// First direct solution

class Solution {
    
    func maxProfit(_ prices: [Int]) -> Int {
        
        guard prices.count > 1 else { return 0 }
        
        var sum = 0
        var firstIndex: Int = 0
        var secondIndex: Int!
        
        for i in 1..<prices.count {
            
            if prices[firstIndex] < prices[i] {
                if secondIndex == nil || prices[secondIndex] < prices[i] {
                    secondIndex = i
                } else {
                    sum += prices[secondIndex] - prices[firstIndex]
                    firstIndex = i
                    secondIndex = nil
                }
                
                if secondIndex == prices.count - 1 {
                    sum += prices[secondIndex] - prices[firstIndex]
                    break
                }
            } else {
                if secondIndex != nil {
                    sum += prices[secondIndex] - prices[firstIndex]
                    secondIndex = nil
                }
                firstIndex = i
            }
        }
        return sum
    }
}

// Second smart, fast, short solution

class Solution2 {
    func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count > 1 else { return 0 }
        
        var prev = prices[0]
        var profit = 0
        for index in 1..<prices.count {
            
            let price = prices[index]
            
            if price > prev {
                profit += price - prev
            }
            
            prev = price
        }
        return profit
    }
}

print(Solution().maxProfit(fourthArray))
