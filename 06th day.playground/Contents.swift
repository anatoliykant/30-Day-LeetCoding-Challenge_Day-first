/// -----------------------------------------------
/// 30-Day LeetCoding Challenge - 1-30th april 2020
/// -----------------------------------------------
/// https://leetcode.com/explore/other/card/30-day-leetcoding-challenge

// Day sixth
//
// https://leetcode.com/explore/challenge/card/30-day-leetcoding-challenge/528/week-1/3288
//
//    Group Anagrams
//    Given an array of strings, group anagrams together.
//
//    Example:
//
//    Input: ["eat", "tea", "tan", "ate", "nat", "bat"]
//    Output:
//    [
//      ["ate","eat","tea"],
//      ["nat","tan"],
//      ["bat"]
//    ]
//    Note:
//
//    All inputs will be in lowercase.
//    The order of your output does not matter.

var firstArray = ["eat", "tea", "tan", "ate", "nat", "bat"] // result [["ate","eat","tea"],["nat","tan"],["bat"]]

let secondArray = ["tea","","eat","","tea",""]              // result [["eat","tea","tea"],["","",""]]

let thirdArray = ["tea","and","ace","ad","eat","dans"]      // result [["eat","tea"],["and"],["dans"],["ace"],["ad"]]

let fourthArray = ["ray","cod","abe","ned","arc","jar","owl","pop","paw","sky","yup","fed","jul","woo","ado","why","ben","mys","den","dem","fat","you","eon","sui","oct","asp","ago","lea","sow","hus","fee","yup","eve","red","flo","ids","tic","pup","hag","ito","zoo"]                                                 // result [["hag"],["pup"],["ids"],["ito"],["flo"],["red"],["hus"],["sow"],["asp"],["oct"],["sui"],["fee"],["eon"],["tic"],["sky"],["ago"],["paw"],["jul"],["pop"],["jar"],["den","ned"],["owl"],["eve"],["mys"],["abe"],["zoo"],["ado"],["ray"],["cod"],["lea"],["arc"],["dem"],["fat"],["yup","yup"],["woo"],["fed"],["why"],["ben"],["you"]]

// First short solution

class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        
        var result = [String: [String]]()
        
        for string in strs {
            
            let key = String(string.sorted())
            
            if result[key] == nil {
                result[key] = [string]
            } else {
                result[key]! += [string]
            }
        }
        
        return result.map{ $0.value }
    }
}

// Second fast solution

class Solution2 {
    
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        
        var dict = [Int: [String]]()
        
        for val in strs {
            let key = hash(val)
            if dict[key] == nil {
                dict[key] = [val]
            } else {
                dict[key]! += [val]
            }
        }
        return Array(dict.values)
    }
    
    func hash(_ str: String) -> Int {
        var bitMaskArray = Array(repeating: 0, count: 26)
        
        for c in str {
            let index = Int(c.asciiValue!) - 97
            bitMaskArray[index] += 1
        }
        
        return bitMaskArray.hashValue
    }
}


print(Solution().groupAnagrams(firstArray))
