import SketchToUIKit
import SmartUIKit
import UIKit
class testlayerViewController:UIViewController
{
    
    var nicebgContainer:UIView?
    
    var qnButton:UIButton?
    
    var PAUPERTextView:UITextView?
    
    var tickButton:UIButton?
    
    var PoorTextView:UITextView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        nicebgContainer = UIView(mTag:"nicebgContainer")
        SPositions.abs(row:0.0,col:-4.5,rows:16.0,cols:9.0).apply(on:nicebgContainer!, superView:view)
        
         
         if let img = UIImage(named:"nicebgContainer.png") {
         nicebgContainer?.backgroundColor = UIColor(patternImage:img)
         }
         
        
        qnButton = UIButton(mTag:"qnButton")
        SPositions.abs(row:11.321428571428571,col:-3.3478260869565215,rows:1.8928571428571428,cols:2.304347826086957).apply(on:qnButton!, superView:view)
        
         
         if let img = UIImage(named:"qnButton.png") {
         qnButton?.backgroundColor = UIColor(patternImage:img)
         }
         
        
        PAUPERTextView = UITextView(mTag:"PAUPERTextView")
        SPositions.abs(row:3.4642857142857144,col:-4.5,rows:1.3214285714285714,cols:8.91304347826087).apply(on:PAUPERTextView!, superView:view)
        
        PAUPERTextView?.backgroundColor = .clear
        PAUPERTextView?.applyString(string:"PAUPER")
        let PAUPERTextViewStyle:SketchStyle? = { 
 if let url =  Bundle.main.url(forResource: "PAUPERTextView_Style", withExtension: "json") { return try? String(contentsOf:url).getAsType(SketchStyle.self)} 
 return nil
}()
        PAUPERTextViewStyle?.apply(on:PAUPERTextView!)
        
         
        
        tickButton = UIButton(mTag:"tickButton")
        SPositions.abs(row:11.321428571428571,col:1.217391304347826,rows:1.8928571428571428,cols:2.304347826086957).apply(on:tickButton!, superView:view)
        
         
         if let img = UIImage(named:"tickButton.png") {
         tickButton?.backgroundColor = UIColor(patternImage:img)
         }
         
        
        PoorTextView = UITextView(mTag:"PoorTextView")
        SPositions.abs(row:6.053571428571429,col:-3.326086956521739,rows:1.0,cols:6.673913043478261).apply(on:PoorTextView!, superView:view)
        
        PoorTextView?.backgroundColor = .clear
        PoorTextView?.applyString(string:"Poor")
        let PoorTextViewStyle:SketchStyle? = { 
 if let url =  Bundle.main.url(forResource: "PoorTextView_Style", withExtension: "json") { return try? String(contentsOf:url).getAsType(SketchStyle.self)} 
 return nil
}()
        PoorTextViewStyle?.apply(on:PoorTextView!)
        
         
        
       
    }
}
