 /// -----------------------------------------------
 /// 30-Day LeetCoding Challenge - 1-30th april 2020
 /// -----------------------------------------------
 /// https://leetcode.com/explore/other/card/30-day-leetcoding-challenge

 // Day ninth (Weak 2 Day second)
 //
 // https://leetcode.com/problems/backspace-string-compare/
 //
 //    Backspace String Compare
 //
 //    Given two strings S and T, return true if they are equal when both are typed into empty text editors. # means a backspace character.
 //
 //    Example 1:
 //
 //    Input: S = "ab#c", T = "ad#c"
 //    Output: true
 //    Explanation: Both S and T become "ac".
 //    Example 2:
 //
 //    Input: S = "ab##", T = "c#d#"
 //    Output: true
 //    Explanation: Both S and T become "".
 //    Example 3:
 //
 //    Input: S = "a##c", T = "#a#c"
 //    Output: true
 //    Explanation: Both S and T become "c".
 //    Example 4:
 //
 //    Input: S = "a#c", T = "b"
 //    Output: false
 //    Explanation: S becomes "c" while T becomes "b".
 //    Note:
 //
 //    1 <= S.length <= 200
 //    1 <= T.length <= 200
 //    S and T only contain lowercase letters and '#' characters.
 //    Follow up:
 //
 //    Can you solve it in O(N) time and O(1) space?

 let S1 = "ab#c", T1 = "ad#c"        // result true (both ac)
 let S2 = "ab##", T2 = "c#d#"        // result true (both "")
 let S3 = "a##c", T3 = "#a#c"        // result true (both c)
 let S4 = "a#c", T4 = "b"            // result false (c != b)
 let S5 = "a#c", T5 = "c"            // result true (c == c)
 let S6 = "", T6 = ""                // result true (both "")
 let S7 = "ccccc####", T7 = ""       // result false (c != "")
 let S8 = "#c#ccc###", T8 = "df##"   // result true (both "")
 let S9 = "ab#", T9 = "ab#"          // result true (both a)
 let S10 = "a#c", T10 = "b"          // result true (both a)

 print(Solution1().backspaceCompare(S10, T10))

 // First direct solution

 class Solution1 {
     
     func backspaceCompare(_ S: String, _ T: String) -> Bool {
         
         guard S != T else { return true }
         
         var sArray = S.map{ String($0) }
         var tArray = T.map{ String($0) }
         
         freeBackspace(array: &sArray)
         freeBackspace(array: &tArray)
         
         return sArray.joined() == tArray.joined()
     }
     
     func freeBackspace(array: inout [String]) {
         for i in (0..<array.count) {
             guard array[i] == "#" else { continue }
             if i == 0 || (i - 1) < 0 {
                 array[i] = ""
             } else if array[i - 1] == "" {
                 var j = i - 1
                 while j != -1 {
                     guard array[j] != "" else {
                         if j == 0 {
                             array[i] = ""
                         }
                         j -= 1
                         continue
                     }
                     array[j] = ""
                     array[i] = ""
                     break
                 }
             } else {
                 array[i] = ""
                 array[i - 1] = ""
             }
         }
     }
 }

 // Second fast & short solution

 class Solution2 {
     func backspaceCompare(_ S: String, _ T: String) -> Bool {
         return freeBackspace(for: S) == freeBackspace(for: T)
     }
     
     private func freeBackspace(for string: String) -> String {
         var letters = [Character]()
         for character in string {
             if character == "#", !letters.isEmpty {
                 letters.removeLast()
             } else {
                 letters.append(character)
             }
         }
         return String(letters)
     }
 }
