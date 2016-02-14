//
//  CustomRows.swift
//  LifenestPlagiocephalyAwarenessTest
//
//  Created by Atharva Vaidya on 2016-02-12.
//  Copyright © 2016 Parse. All rights reserved.
//

import Eureka
import UIKit

public class TextDisplayCell: Cell<String>, CellType
{
    required public init(style: UITableViewCellStyle, reuseIdentifier: String?)
    {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    public var textView: UITextView?
    public override func setup()
    {
        height = {300}
        textView = UITextView(frame: self.frame)
        textView?.frame.size.height = 300
        textView?.frame.size.width = self.frame.width
        textView!.text = row.value
        textView!.editable = false
        textView!.font = .preferredFontForTextStyle(UIFontTextStyleBody)
        textView?.textContainerInset = UIEdgeInsets(top: 10, left: 40, bottom: 10, right: 40)
        textView?.backgroundColor = UIColor.clearColor()
        self.addSubview(textView!)
    }
    
    public override func update()
    {
        super.update()
        
    }
}
//MARK: TextDisplayRow

public final class TextDisplayRow: Row<String, TextDisplayCell>, RowType
{
    required public init(tag: String?) {
        super.init(tag: tag)
        displayValueFor = nil
    }
}

