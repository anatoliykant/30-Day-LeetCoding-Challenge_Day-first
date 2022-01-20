/// -----------------------------------------------
/// 30-Day LeetCoding Challenge - 1-30th april 2020
/// -----------------------------------------------
/// https://leetcode.com/explore/other/card/30-day-leetcoding-challenge

// Day second
//
// https://leetcode.com/problems/happy-number/
//
// Happy Number
// Write an algorithm to determine if a number is "happy".
//
// A happy number is a number defined by the following process: Starting with  any positive integer, replace the number by the sum of the squares of its  digits, and repeat the process until the number equals 1 (where it will  stay), or it loops endlessly in a cycle which does not include 1. Those  numbers for which this process ends in 1 are happy numbers.
//
// Example:
//
// Input: 19
// Output: true
//
// Explanation:
// 1^2 + 9^2 = 82
// 8^2 + 2^2 = 68
// 6^2 + 8^2 = 100
// 1^2 + 0^2 + 0^2 = 1

import Foundation

func calculateTime(block : (() -> Void)) {
	let start = DispatchTime.now()
	block()
	let end = DispatchTime.now()
	let nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds
	let timeInterval = Double(nanoTime) / 1_000_000
	print("Time: \(timeInterval) milliseconds")
}

// First functional solution

class Solution {
	func isHappy(_ n: Int) -> Bool {
		
		guard n > 0 else { return false }
		guard n != 1 else { return true }
		
		var array = [Int]()
		var newNumber = n
		
		while (newNumber != 1 && !array.contains(newNumber)) {
			array.append(newNumber)
			newNumber = getNext(newNumber)
		}
		
		return newNumber == 1
	}
	
	func getNext(_ n: Int) -> Int {
		return "\(n)"
			.compactMap{ $0.wholeNumberValue! * $0.wholeNumberValue! }
			.reduce(0, +)
	}
}

// Second fast solution

class Solution2 {
	func isHappy(_ n: Int) -> Bool {
		
		var number = n
		var seenNumbers = Set<Int>()
		
		while (number != 1 && !seenNumbers.contains(number)) {
			seenNumbers.insert(number)
			number = getNext(number)
		}
		return number == 1
	}
		
	func getNext(_ n: Int) -> Int {
		var number = n
		var newNumber = 0
		while (number > 0) {
			let d = number % 10
			number /= 10
			newNumber += d * d
		}
		return newNumber
	}
}

calculateTime {
	print(Solution().isHappy(164465415646))
}
