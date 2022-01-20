/// -----------------------------------------------
/// 30-Day LeetCoding Challenge - 1-30th april 2020
/// -----------------------------------------------
/// https://leetcode.com/explore/other/card/30-day-leetcoding-challenge

// Day tenth (Weak 2 Day third)
//
// https://leetcode.com/problems/min-stack/
//
//    Min Stack
//
//    Design a stack that supports push, pop, top, and retrieving the minimum element in constant time.
//
//    push(x) -- Push element x onto stack.
//    pop() -- Removes the element on top of the stack.
//    top() -- Get the top element.
//    getMin() -- Retrieve the minimum element in the stack.
//
//
//    Example:
//
//    MinStack minStack = new MinStack();
//    minStack.push(-2);
//    minStack.push(0);
//    minStack.push(-3);
//    minStack.getMin();   --> Returns -3.
//    minStack.pop();
//    minStack.top();      --> Returns 0.
//    minStack.getMin();   --> Returns -2.
//
//
//       Hide Hint #1
//    Consider each node in the stack having a minimum value. (Credits to @aakarshmadhavan)

let minStack = MinStack()
minStack.push(-2)
minStack.push(0)
minStack.push(-3)
print(minStack.getMin())   // --> Returns -3
minStack.pop()
print(minStack.top())      // --> Returns 0
print(minStack.getMin())   // --> Returns -2

class MinStack {
    
    var stack: [Int]

    /** initialize your data structure here. */
    init() {
      stack = []
    }
    
    func push(_ x: Int) {
        stack.append(x)
    }
    
    func pop() {
        _ = stack.removeLast()
    }
    
    func top() -> Int {
        stack[stack.count - 1]
    }
    
    func getMin() -> Int {
        var minIndex: Int!
        
        for i in 0..<stack.count {
            if minIndex == nil {
                minIndex = i
            } else if stack[i] < stack[minIndex] {
                minIndex = i
            }
        }
        
        return stack[minIndex]
    }
}
