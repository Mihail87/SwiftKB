/*:
## Arrays
[Dev KB](Dev%20KB) > Data Structures > [Collections](Collections)

**An ordered, random-access collection.**
*/
import Foundation

var intArray: [Int] = [0, 1, 2, 4, 3, 5, 6, 7]
var firstThree = intArray.prefix(5)
//: > Appending an element to an array
intArray.append(8)
intArray.append(9)
intArray
//: > To **remove elements** from an array, use the remove(at:) and removeLast() methods (see also: removeAll, removeFirst, removeSubrange(_:)).
intArray
intArray.remove(at: 3)
intArray
intArray.insert(4, at: 4)
intArray
intArray.removeFirst()
intArray.removeLast()
intArray
intArray.removeAll()
intArray
//: > This will throw an error. An optional array does not have an .append method.
var optionalIntArray: [Int]? = nil
//optionalIntArray.append(2)
//: > To shuffle an array or extract a random element, see [Random](Utilities)
repeatingArray: [Int] = [](repeating: 1, count: 20)
repeatingArray
