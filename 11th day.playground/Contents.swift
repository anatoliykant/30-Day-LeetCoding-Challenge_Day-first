/// -----------------------------------------------
/// 30-Day LeetCoding Challenge - 1-30th april 2020
/// -----------------------------------------------
/// https://leetcode.com/explore/other/card/30-day-leetcoding-challenge

// Day eleventh (Weak 2 Day fourth)
//
// https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/529/week-2/3291
//
//  Diameter of Binary Tree
//
//	Given a binary tree, you need to compute the length of the diameter of the tree. The diameter of a binary tree is the length of the longest path between any two nodes in a tree. This path may or may not pass through the root.
//
//	Example:
//	Given a binary tree
//			  1
//			 / \
//			2   3
//		   / \
//		  4   5
//	Return 3, which is the length of the path [4,2,1,3] or [5,2,1,3].
//
//	Note: The length of path between two nodes is represented by the number of edges between them.

/// Definition for a binary tree node.
class TreeNode {
	public var val: Int
	public var left: TreeNode?
	public var right: TreeNode?
	
	public init(_ val: Int) {
		self.val = val
		self.left = nil
		self.right = nil
	}
}

// First solution without global property

class Solution1 {
	
	func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
		
		guard root != nil || root?.left != nil || root?.right != nil else { return 0 }
		
		let tupleArray = getTuple(root)
		var diameter = 0

		for tuple in tupleArray {
			let sum = tuple.0 + tuple.1
			if sum > diameter {
				diameter = sum
			}
		}
		
		return diameter
	}
	
	func getTuple(_ tree: TreeNode?) -> [(Int, Int)] {
		guard tree != nil else { return [(0, 0)] }
		guard tree?.left != nil || tree?.right != nil else { return [(0, 0)] }
		
		let leftArray = tree?.left != nil ? getTuple(tree?.left) : []
		let rightArray = tree?.right != nil ? getTuple(tree?.right) : []
		
		var newTuple = (0, 0)
		
		if let left = leftArray.last {
			newTuple.0 = max(left.0, left.1) + 1
		}
		
		if let right = rightArray.last {
			newTuple.1 = max(right.0, right.1) + 1
		}
		
		return leftArray + rightArray + [newTuple]
	}
}

// Second short fast solution

class Solution2 {
	
	var diameter = 0
	
	func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
		
		guard root != nil || root?.left != nil || root?.right != nil else { return 0 }
		
		_ = sumMax(root)
		
		return diameter
	}
	
	func sumMax(_ tree: TreeNode?) -> Int {
		guard tree != nil else { return 0 }
		
		let left = sumMax(tree?.left)
		let right = sumMax(tree?.right)
		
		diameter = max(diameter, left + right)
		
		return max(left, right) + 1
	}
}

//	[1,2,3,4,5]
//			  1
//			 / \
//			2   3
//		   / \
//		  4   5
// 	result 3 - (4,2,1,2) or (5,2,1,3)

var treeFiveNode: TreeNode {
	
	let leftLeftNode = TreeNode(4)
	let leftRightNode = TreeNode(5)
	
	let leftNode = TreeNode(2)
	leftNode.left = leftLeftNode
	leftNode.right = leftRightNode
	
	let rightNode = TreeNode(3)
	
	let node = TreeNode(1)
	node.left = leftNode
	node.right = rightNode
	
	return node
}

//	[3,1,null,null,2]
//			  3
//			 /
//			1
//		     \
//		      2
// 	result 2 - (2,1,3)

var treeNode: TreeNode {
	
	let leftRightNode = TreeNode(2)
	
	let leftNode = TreeNode(1)
	leftNode.right = leftRightNode
	
	let node = TreeNode(3)
	node.left = leftNode
	
	return node
}

//	[4,2,null,1,3]
//			  4
//			 /
//			2
//		   / \
//		  1   3
// 	result 2 - (1,2,3) or (3,2,4) or (1,2,4)

var treeFourNode: TreeNode {
	
	
	let leftLeftNode = TreeNode(1)
	let leftRightNode = TreeNode(3)
	
	let leftNode = TreeNode(2)
	leftNode.left = leftLeftNode
	leftNode.right = leftRightNode
	
	let node = TreeNode(4)
	node.left = leftNode
	
	return node
}

print(Solution1().diameterOfBinaryTree(treeFiveNode))
