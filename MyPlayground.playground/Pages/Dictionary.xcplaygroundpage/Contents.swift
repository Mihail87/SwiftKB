/*:
 ## [Dictionary](https://developer.apple.com/documentation/foundation/date)
 [Dev KB](Dev%20KB) > Data Structures > [Collections](Collections)
 
 **A collection whose elements are key-value pairs.**
 */
import Foundation
//: > Declare an empty Dictionary
var comments: [Int: String] = [:]
//: > Add elements to the Dictionary
comments[111] = "This is comment no 111"
//: > Count the elements
comments.count
//: > Get the value for a key
comments[111]
