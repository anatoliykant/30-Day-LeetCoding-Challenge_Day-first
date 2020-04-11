# 30 Day LeetCoding challenge

30 day challenge from [leetcode](https://leetcode.com/explore/other/card/30-day-leetcoding-challenge)

Every day you need to solve one problem.

Spread every day's solution.

## [Week 1](https://github.com/anatoliykant/30-Day-LeetCoding-Challenge/blob/master/README.md#week-1-1)

- [x] [Day first](https://github.com/anatoliykant/30-Day-LeetCoding-Challenge/new/master?readme=1#day-first---single-number)
- [x] [Day second](https://github.com/anatoliykant/30-Day-LeetCoding-Challenge/new/master?readme=1#day-second---happy-number)
- [x] [Day third](https://github.com/anatoliykant/30-Day-LeetCoding-Challenge/new/master?readme=1#day-third---maximum-subarray)
- [x] [Day fourth](https://github.com/anatoliykant/30-Day-LeetCoding-Challenge/blob/master/README.md#day-fourth---move-zeroes)
- [x] [Day fifth](https://github.com/anatoliykant/30-Day-LeetCoding-Challenge/blob/master/README.md#day-fifth---best-time-to-buy-and-sell-stock-ii)
- [x] [Day sixth](https://github.com/anatoliykant/30-Day-LeetCoding-Challenge/blob/master/README.md#day-sixth---group-anagrams)
- [x] [Day seventh](https://github.com/anatoliykant/30-Day-LeetCoding-Challenge/blob/master/README.md#day-seventh---counting-elements)

## [Week 2](https://github.com/anatoliykant/30-Day-LeetCoding-Challenge/blob/master/README.md#week-2-1)

- [x] [Day first](https://github.com/anatoliykant/30-Day-LeetCoding-Challenge/blob/master/README.md#day-first---middle-of-the-linked-list)
- [x] [Day second](https://github.com/anatoliykant/30-Day-LeetCoding-Challenge/blob/master/README.md#day-second---backspace-string-compare)
- [x] [Day third](https://github.com/anatoliykant/30-Day-LeetCoding-Challenge/blob/master/README.md#day-third---min-stack)
- [ ] Day fourth
- [ ] Day fifth
- [ ] Day sixth
- [ ] Day seventh

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
> If you have figured out the O(n) solution, try coding another solution using the divide and conquer approach, which is more subtle.

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

Hint #1
  
> In-place means we should not be allocating any space for extra array. But we are allowed to modify the existing array. However, as a first step, try coming up with a solution that makes use of additional space. For this problem as well, first apply the idea discussed using an additional array and the in-place solution will pop up eventually.
  
Hint #2
  
> A two-pointer approach could be helpful here. The idea would be to have one pointer for iterating the array and another pointer that just works on the non-zero elements of the array.

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

#### Day sixth - [Group Anagrams](https://leetcode.com/explore/other/card/30-day-leetcoding-challenge/528/week-1/3288)
  
Given an array of strings, group anagrams together.

Example:
```
  Input: ["eat", "tea", "tan", "ate", "nat", "bat"],
  Output:
  [
    ["ate","eat","tea"],
    ["nat","tan"],
    ["bat"]
  ]
```
##### Note:

All inputs will be in lowercase.
The order of your output does not matter.

#### Day seventh - [Counting Elements](https://leetcode.com/explore/other/card/30-day-leetcoding-challenge/528/week-1/3289)

Given an integer array arr, count element x such that x + 1 is also in arr.

If there're duplicates in arr, count them seperately.

Example 1:
```
Input: arr = [1,2,3]
Output: 2
Explanation: 1 and 2 are counted cause 2 and 3 are in arr.
```

Example 2:
```
Input: arr = [1,1,3,3,5,5,7,7]
Output: 0
Explanation: No numbers are counted, cause there's no 2, 4, 6, or 8 in arr.
```

Example 3:
```
Input: arr = [1,3,2,3,5,0]
Output: 3
Explanation: 0, 1 and 2 are counted cause 1, 2 and 3 are in arr.
```

Example 4:
```
Input: arr = [1,1,2,2]
Output: 2
Explanation: Two 1s are counted cause 2 is in arr.
```

Constraints:

`1 <= arr.length <= 1000`

`0 <= arr[i] <= 1000`

Hint #1  
> Use hashset to store all elements.

Hint #2  
> Loop again to count all valid elements.

### Week 2

#### Day first - [Middle of the Linked List](https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/529/week-2/3290)

Given a non-empty, singly linked list with head node head, return a middle node of linked list.

If there are two middle nodes, return the second middle node.

Example 1:
```
Input: [1,2,3,4,5]
Output: Node 3 from this list (Serialization: [3,4,5])
The returned node has value 3.  (The judge's serialization of this node is [3,4,5]).
Note that we returned a ListNode object ans, such that:
ans.val = 3, ans.next.val = 4, ans.next.next.val = 5, and ans.next.next.next = NULL.
```

Example 2:
```
Input: [1,2,3,4,5,6]
Output: Node 4 from this list (Serialization: [4,5,6])
Since the list has two middle nodes with values 3 and 4, we return the second one.
```

##### Note:

The number of nodes in the given list will be between 1 and 100.

#### Day second - [Backspace String Compare](https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/529/week-2/3291)

Given two strings S and T, return if they are equal when both are typed into empty text editors. # means a backspace character.

Example 1:
```
Input: S = "ab#c", T = "ad#c"
Output: true
Explanation: Both S and T become "ac".
```

Example 2:
```
Input: S = "ab##", T = "c#d#"
Output: true
Explanation: Both S and T become "".
```

Example 3:
```
Input: S = "a##c", T = "#a#c"
Output: true
Explanation: Both S and T become "c".
```

Example 4:
```
Input: S = "a#c", T = "b"
Output: false
Explanation: S becomes "c" while T becomes "b".
```

##### Note:

1 <= S.length <= 200
1 <= T.length <= 200
S and T only contain lowercase letters and '#' characters.
Follow up:

> Can you solve it in O(N) time and O(1) space?

#### Day third - [Min Stack](https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/529/week-2/3292)

Design a stack that supports push, pop, top, and retrieving the minimum element in constant time.

`push(x)` -- Push element x onto stack.

`pop()` -- Removes the element on top of the stack.

`top()` -- Get the top element.

`getMin()` -- Retrieve the minimum element in the stack.
 

Example:
```
MinStack minStack = new MinStack();
minStack.push(-2);
minStack.push(0);
minStack.push(-3);
minStack.getMin();   --> Returns -3.
minStack.pop();
minStack.top();      --> Returns 0.
minStack.getMin();   --> Returns -2.
```
 

Hint #1  
> Consider each node in the stack having a minimum value. (Credits to @aakarshmadhavan)
