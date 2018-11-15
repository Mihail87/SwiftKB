/*:
 ## Random
 [Dev KB](Dev%20KB) > Snippets
 */
import Foundation
//: > A random Int between 1 and 4 (inclusive)
let randomInt = Int.random(in: 1..<5)
//: > Similar methods exist for Float, Double, CGFloat, Boolean:
let randomFloat = Float.random(in: 1..<10)
let randomDouble = Double.random(in: 1...100)
let randomBool = Bool.random()
//:  > Swift 4.2 adds new **shuffle() and shuffled()** methods to arrays, depending on whether you want in-place shuffling or not.
var albums = ["Red", "1989", "Reputation"]
// shuffle in place
albums.shuffle()
// get a shuffled array back
let shuffled = albums.shuffled()
//: > It also adds a new **randomElement()** method to arrays, which returns one random element from the array if it isn’t empty, or nil otherwise:
if let random = albums.randomElement() {
    print("The random album is \(random).")
}
//: - - -
/*:
## Sleep
[Dev KB](Dev%20KB) > Snippets
> Sleep - only int increments
*/
sleep(1)
//: > Usleep() offers a more granular level. eg: the bellow will sleep for .002 seconds
usleep(2000)
