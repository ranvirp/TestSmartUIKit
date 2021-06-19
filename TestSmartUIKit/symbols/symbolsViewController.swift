import SketchToUIKit
import SmartUIKit
import UIKit
class symbolsViewController:UIViewController
{
    
    var Rectangle2:UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        Rectangle2 = UIView(mTag:"Rectangle2")
        SPositions.abs(row:1.625,col:-2.0869565217391304,rows:2.0357142857142856,cols:3.739130434782609).apply(on:Rectangle2!, superView:view)
        
         
         if let img = UIImage(named:"Rectangle2.png") {
         Rectangle2?.backgroundColor = UIColor(patternImage:img)
         }
         
        
       
    }
}
