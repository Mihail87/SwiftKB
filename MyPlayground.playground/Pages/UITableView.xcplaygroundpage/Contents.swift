/*:
  ## UITableView
  [Dev KB](Dev%20KB) > Views > 
  
  > After selecting a row in the Table View, it will remain highlighted. To deselect it automatically upon return, call the deselectRow function on viewWillAppear.
*/
 override func viewWillAppear(_ animated: Bool) {
        if let index = self.tableView.indexPathForSelectedRow{
            self.tableView.deselectRow(at: index, animated: true)
        }
    }
//: > On a Text Field which was added on a static Table View Cell, you would prefer to disable highlighting the row when clicked:
override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
    return nil
}
