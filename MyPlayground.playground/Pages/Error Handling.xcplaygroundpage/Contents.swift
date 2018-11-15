/*:
## Error Handling
[Dev KB](Dev%20KB) > Snippets
*/
import Foundation
//: > Do - Catch Syntax
do {
    let decoder = JSONDecoder()
    let story = try decoder.decode(Item.self, from: data)
} catch let error {
//: > .localizedDescription shows a "user-friendly" error, eg “The data couldn’t be read because it is missing” error when decoding JSON in Swift
    print("Could not convert JSON data into a dictionary. Error: " + error.localizedDescription)
//: > In one case I had an extra key in my Decodable struct - for storing state of the item. (eg.: .new, .downloading, .downloaded). I just had to make it an optional. In order to get a better error, you have to display it directly:
    print(error)
}

//: > To set up warnings or errors which are shown at compile time
//#warning("This is the message which is included as the warning.")
//#error("Don't compile successfully until you fix this issue and remove this error trigger.")
