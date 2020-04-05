# 30 Day LeetCoding challenge

30 day challenge from [leetcode](https://leetcode.com/explore/other/card/30-day-leetcoding-challenge)

Every day you need to solve one problem.

Spread every day's solution.

## Week 1

- [x] [Day first](https://github.com/anatoliykant/30-Day-LeetCoding-Challenge/new/master?readme=1#day-first---single-number)
- [x] [Day second](https://github.com/anatoliykant/30-Day-LeetCoding-Challenge/new/master?readme=1#day-second---happy-number)
- [x] [Day third](https://github.com/anatoliykant/30-Day-LeetCoding-Challenge/new/master?readme=1#day-third---maximum-subarray)
- [x] [Day fourth](https://github.com/anatoliykant/30-Day-LeetCoding-Challenge/blob/master/README.md#day-fourth---move-zeroes)
- [ ] [Day fifth](https://github.com/anatoliykant/30-Day-LeetCoding-Challenge/blob/master/README.md#day-fifth---best-time-to-buy-and-sell-stock-ii)
- [ ] Day sixth
- [ ] Day seventh

## Week 2
## Week 3
## Week 4
## Week 5

### Solutions

### Week 1

#### Day first - [Single Number](https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/528/week-1/3283)
Given a non-empty array of integers, every element appears twice except for one. Find that single one.

> Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?


Example 1:
```
  Input: [2,2,1]
  Output: 1
```

Example 2:
```
  Input: [4,1,2,1,2]
  Output: 4
```

#### Day second - [Happy Number](https://leetcode.com/explore/other/card/30-day-leetcoding-challenge/528/week-1/3284)

Write an algorithm to determine if a number is "happy".

> A happy number is a number defined by the following process: Starting with  any positive integer, replace the number by the sum of the squares of its  digits, and repeat the process until the number equals 1 (where it will  stay), or it loops endlessly in a cycle which does not include 1. Those  numbers for which this process ends in 1 are happy numbers.

Example:
```
  Input: 19
  Output: true
```

>Explanation:
```
  1^2 + 9^2 = 82
  8^2 + 2^2 = 68
  6^2 + 8^2 = 100
  1^2 + 0^2 + 0^2 = 1
```

#### Day third - [Maximum Subarray](https://leetcode.com/explore/other/card/30-day-leetcoding-challenge/528/week-1/3285)

Given an integer array nums, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.

Example:
```
  Input: [-2,1,-3,4,-1,2,1,-5,4],
  Output: 6
  Explanation: [4,-1,2,1] has the largest sum = 6.
 ```
 
Follow up:
>If you have figured out the O(n) solution, try coding another solution using the divide and conquer approach, which is more subtle.

#### Day fourth - [Move Zeroes](https://leetcode.com/explore/other/card/30-day-leetcoding-challenge/528/week-1/3286)

Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.

Example:
```
  Input: [0,1,0,3,12]
  Output: [1,3,12,0,0]
  Note:
```
##### Notes
1. You must do this in-place without making a copy of the array.
2. Minimize the total number of operations.

  Hide Hint #1
  
> In-place means we should not be allocating any space for extra array. But we are allowed to modify the existing array. However, as a first step, try coming up with a solution that makes use of additional space. For this problem as well, first apply the idea discussed using an additional array and the in-place solution will pop up eventually.
  
  Show Hint #2
  
>A two-pointer approach could be helpful here. The idea would be to have one pointer for iterating the array and another pointer that just works on the non-zero elements of the array.

#### Day fifth - [Best Time to Buy and Sell Stock II](https://leetcode.com/explore/other/card/30-day-leetcoding-challenge/528/week-1/3287)

Say you have an array for which the ith element is the price of a given stock on day i.

Design an algorithm to find the maximum profit. You may complete as many transactions as you like (i.e., buy one and sell one share of the stock multiple times).

> You may not engage in multiple transactions at the same time (i.e., you must sell the stock before you buy again).

Example 1:
```
  Input: [7,1,5,3,6,4]
  Output: 7
  Explanation: Buy on day 2 (price = 1) and sell on day 3 (price = 5), profit = 5-1 = 4.
               Then buy on day 4 (price = 3) and sell on day 5 (price = 6), profit = 6-3 = 3.
```
Example 2:
```
  Input: [1,2,3,4,5]
  Output: 4
  Explanation: Buy on day 1 (price = 1) and sell on day 5 (price = 5), profit = 5-1 = 4.
               Note that you cannot buy on day 1, buy on day 2 and sell them later, as you are
               engaging multiple transactions at the same time. You must sell before buying again.
```
Example 3:
```
  Input: [7,6,4,3,1]
  Output: 0
  Explanation: In this case, no transaction is done, i.e. max profit = 0.
```
