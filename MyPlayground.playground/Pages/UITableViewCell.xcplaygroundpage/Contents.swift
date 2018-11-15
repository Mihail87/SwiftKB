/*:
 ## Custom UITableViewCell
 [Dev KB](Dev%20KB) > Views > [UITableView](UITableView) >
 
  > To indent a cell's content use **indentationLevel** property. However custom cells don't apply indentationLevel automatically. We need to update layoutMargins manually. **Also make sure that the cell's element are using the superview's layoutMarginGuide as a constraint for the left side!**
 */

class CommentCell: UITableViewCell {
    static let reuseIdentifier = "CommentCell"
    
    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var elapsedTimeLabel: UILabel!
    @IBOutlet weak var byUserLabel: UILabel!
    @IBOutlet weak var depthLabel: UILabel!
    
    override func layoutSubviews() {
        // Custom layout cells don't apply indentationLevel automatically. We need to update layoutMargins manually
        super.layoutSubviews()
        contentView.layoutMargins.left = layoutMargins.left + CGFloat(indentationLevel) * indentationWidth
    }
}
//: > Indent the separator line between the cells
let separatorIndent = CGFloat(15 + Int(cell.indentationWidth) * Int(cell.indentationLevel))
cell.separatorInset = UIEdgeInsetsMake(0, separatorIndent, 0, 0)

