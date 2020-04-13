/// -----------------------------------------------
/// 30-Day LeetCoding Challenge - 1-30th april 2020
/// -----------------------------------------------
/// https://leetcode.com/explore/other/card/30-day-leetcoding-challenge

// Day twelfth (Weak 2 Day fith)
//
// https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/529/week-2/3297
//
//	Last Stone Weight
//
//	We have a collection of stones, each stone has a positive integer weight.
//
//		Each turn, we choose the two heaviest stones and smash them together.  Suppose the stones have weights x and y with x <= y.  The result of this smash is:
//
//		If x == y, both stones are totally destroyed;
//		If x != y, the stone of weight x is totally destroyed, and the stone of weight y has new weight y-x.
//		At the end, there is at most 1 stone left.  Return the weight of this stone (or 0 if there are no stones left.)
//
//
//		Example 1:
//
//		Input: [2,7,4,1,8,1]
//		Output: 1
//		Explanation:
//		We combine 7 and 8 to get 1 so the array converts to [2,4,1,1,1] then,
//		we combine 2 and 4 to get 2 so the array converts to [2,1,1,1] then,
//		we combine 2 and 1 to get 1 so the array converts to [1,1,1] then,
//		we combine 1 and 1 to get 0 so the array converts to [1] then that's the value of last stone.
//
//
//		Note:
//
//		1 <= stones.length <= 30
//		1 <= stones[i] <= 1000
//
		
class Solution {
	func lastStoneWeight(_ stones: [Int]) -> Int {
		
		guard !stones.isEmpty else { return 0 }
		guard stones.count > 1 else { return stones[0] }
		
		var array = stones.sorted{ $0 < $1	}.filter{ $0 != 0 }
		
		guard !array.isEmpty else { return 0 }
		
		while array.count != 1 {
			let count = array.count
			guard count > 1 else {
				return count == 0 ? 0 : array[0]
			}
			let lastIndex = count - 1
			let last = array[lastIndex]
			let penult = array[lastIndex - 1]
			
			let newStone = last - penult
			
			if newStone == 0 {
				array.removeLast()
				array.removeLast()
			} else {
				_ = array.removeLast()
				array[lastIndex - 1] = newStone
				array.sort(by: < )
			}
		}
		
		return array[0]
	}
}
		
class Solution1 {
	func lastStoneWeight(_ stones: [Int]) -> Int {
		guard !stones.isEmpty else { return 0 }
		guard stones.count != 1 else { return stones[0] }
		
		return lastStoneWeight(trim(stones))
	}
	
	func  trim(_ arr: [Int]) -> [Int] {
		var newArray = arr.sorted(by: <)
		let count = newArray.count
		guard count != 1 else {	return newArray	}
		
		if newArray[count - 1] == newArray[count - 2] {
			newArray.removeLast()
			newArray.removeLast()
		} else {
			let val = newArray[count - 1] - newArray[count - 2]
			newArray[count - 2] = val
			newArray.removeLast()
		}
		return newArray
	}
}

let array1 = [2, 7, 4, 1, 8, 1]		// result 1
let array2 = [0, 2, 5, 1, 0, 0]		// result 2
let array3 = [0, 0, 0, 0]			// result 0
let array4 = [Int]()				// result 0
let array5 = [2, 2]					// result 0

print(Solution1().lastStoneWeight(array5))
