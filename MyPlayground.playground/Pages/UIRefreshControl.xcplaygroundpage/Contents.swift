/*:
 ## UIRefreshControl
 [Dev KB](Dev%20KB) > Snippets >
 
 > Pull to refresh Control. First define the refresh control in the View Controller
 */
var myRefreshControl: UIRefreshControl?
//: > In viewDidLoad()
myRefreshControl = UIRefreshControl()
myRefreshControl?.addTarget(self, action: #selector(refreshData(sender:)), for: .valueChanged)
myRefreshControl?.attributedTitle = NSAttributedString(string: "Pull to refresh")
self.tableView.refreshControl = myRefreshControl
//: > And define the function which gets called when the control is triggered
@objc func refreshData(sender: UIRefreshControl) {
    print("refreshing data")
    
    fetchStoryIDs(from: topStoriesURL)
    
    sender.endRefreshing()
}
