//
//  ViewController.swift
//  UrbozPicker
//
//  Created by Paulo Guevara Castelo on 7/13/16.
//  Copyright © 2016 Paulo Guevara. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIPickerViewDataSource, UIPickerViewDelegate {

	let countryCode = ["Selecciona tu país", "México (+52)", "Estados Unidos (+1)", "Colombia (+57)"]
	
	@IBOutlet weak var countrySelection: UrbozPicker!
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		//Country PICKERVIEW CONFIGURATION
		countrySelection.selectorPicker.delegate = self
		countrySelection.selectorPicker.dataSource = self
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	// returns the number of 'columns' to display.
	func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
		return 1
	}
	
	// returns the # of rows in each component..
	func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
		return self.countryCode.count
	}
	
	func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
		return self.countryCode[row]
	}
	
	//SELECTION OPERATIONS
	func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
		
		//country selected display at textfield
		countrySelection.text = self.countryCode[row]
		
	}
	
	func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
		return 50
	}
	

}

