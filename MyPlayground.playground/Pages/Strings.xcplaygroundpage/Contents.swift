/*:
 ## [Strings](https://developer.apple.com/documentation/swift/string)
[Dev KB](Dev%20KB) > Data Structures > [Collections](Collections)

**A Unicode string value that is a collection of characters.**
*/
//: > Declare a string:
var str: String = ""
str = "Hello, playground"

let firstName = "Ellen"
//: > **Count** number of chars:
str.count
firstName.count
/*:
 > **String interpolations** are string literals that evaluate any included expressions and convert the results to string form.
 */
let greeting = "Welcome home \(firstName)"
//: > **Concatenation** of strings and characters:
let fullGreeting = greeting + " Page"
let exclamation: Character = "!" //even for a single char, type has to be specified, otherwise it will default to String
let properGreeting = fullGreeting + String(exclamation) //Character has to be cast to String
//: > Check if a String is empty
let emptyString = ""
print(emptyString.isEmpty)
//: > Lower case of String
print(properGreeting.lowercased())
//: > Check beginning or the end of a string
print(properGreeting.hasPrefix("Welcome"))
print(properGreeting.hasSuffix("Page!"))

