/*:
 ## UITextFieldDelegate
 [Dev KB](Dev%20KB) > Views > UITextField >
 
 This is an example from the Taskly app. The View Controller will become the delegate of the Text Field (textField) and will implement one of it's methods (textFieldShouldReturn) in order to dismiss the keyboard automatically.
 */

class AddItemTableViewController: UITableViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func done(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        print("Task added")
    }
    
    @IBAction func cancel(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
//: > The TextField will become the First Responder, so the keyboard will automatically pop up
    override func viewWillAppear(_ animated: Bool) {
        textField.becomeFirstResponder()
    }
//: > The View Controller has to become the delegate of the Text Field. This can also be done in the Storyboard by dragging from the textfield to the view controller on the delegate.
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
        navigationItem.largeTitleDisplayMode = .never
    }
    
//: > To disable selecting/highlighting of the static cell which contains the Text Field
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        return nil
    }
    
}
//: > Group Delegate protocol implementations in extensions. Resign the First Responder so the keyboard will be dismissed when the user presses Return (Done).
extension AddItemTableViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("Done was pressed!")
        textField.resignFirstResponder()
        
        return false
    }
}
