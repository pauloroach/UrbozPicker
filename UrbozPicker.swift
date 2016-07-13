//
//  UrbozPicker.swift
//  urboz
//
//  Created by Paulo Guevara Castelo on 6/15/16.
//  Copyright © 2016 Gobroking Representaciones S.A. de C.V. All rights reserved.
//

import UIKit

class UrbozPicker: UITextField {
    
    var selectorPicker:UIPickerView!
    var toolBarPicker:UIToolbar!
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        //createBorder()
        
        createPicker()
        createToolbar()
        
        self.inputView = selectorPicker
        self.inputAccessoryView = toolBarPicker
        
    }
    
    func createBorder() {
        let border = CALayer()
        let width = CGFloat(2.0)
        border.borderColor = UIColor(red: 55/255, green: 78/255, blue: 95/255, alpha: 1.0).CGColor
        border.frame = CGRect(x: 0, y: self.frame.size.height-width, width: self.frame.size.width, height: self.frame.size.height)
        border.borderWidth = width
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
    
    func createPicker() {
        self.selectorPicker = UIPickerView()
        selectorPicker.backgroundColor = .whiteColor()
        selectorPicker.showsSelectionIndicator = true
    }
    
    func createToolbar() -> UIToolbar {
        //Settings
        toolBarPicker = UIToolbar()
        //toolBarPicker.barStyle = UIBarStyle.BlackTranslucent
        //toolBarPicker.translucent = true
		//toolBarPicker.barTintColor = UIColor.blackColor()
        toolBarPicker.sizeToFit()
        
        //Buttons
        let doneButton = UIBarButtonItem(title: "Ok", style: UIBarButtonItemStyle.Plain, target: self, action:  #selector(UrbozPicker.donePicker))
		//doneButton.tintColor = UIColor.whiteColor()
        let spaceTicketButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.FlexibleSpace, target: nil, action: nil)
        //let cancelButton = UIBarButtonItem(title: "Siempre no :S", style: UIBarButtonItemStyle.Plain, target: self, action: "donePicker")
        
        //Assign
        toolBarPicker.setItems([spaceTicketButton, doneButton], animated: false)
        toolBarPicker.userInteractionEnabled = true
        return toolBarPicker
    }
    
    @objc func donePicker(sender:UIBarButtonItem) -> Bool {
        self.resignFirstResponder()
        return true
    }
    
}
