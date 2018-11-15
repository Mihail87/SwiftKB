/*:
 ## [Date](https://developer.apple.com/documentation/foundation/date)
 [Dev KB](Dev%20KB) > Data Structures > Dates and Times
 
 **A specific point in time, independent of any calendar or time zone.**
 */
import Foundation
import UIKit
//: > Timestamp in Seconds since 1970
var timestampDouble: Double = 1536656921
Date(timeIntervalSince1970: timestampDouble)
//: > Format Date as Elapsed Time/Days
var timestampDate: Date = Date(timeIntervalSince1970: 1536656921)

let componentsFormatter = DateComponentsFormatter()
componentsFormatter.allowedUnits = [.second, .minute, .hour, .day]
componentsFormatter.maximumUnitCount = 1
componentsFormatter.unitsStyle = .abbreviated

let timeAgo = componentsFormatter.string(from: timestampDate, to: Date())
//: > Decoding timestamp (in seconds since 1970) in JSON to Date(). eg: 1536656921
let decoder = JSONDecoder()
decoder.dateDecodingStrategy = .secondsSince1970
//let story = try decoder.decode(Item.self, from: data)
