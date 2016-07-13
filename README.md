UrbozPicker
====================

iOS Swift 2.0 Textfield with PickerView very simple
---------------------

![alt text](http://i.imgur.com/E0z4hcn.png "UrbozPicker Demo")

Create a simple textfield with pickerview to select options like html combobox.

### Steps:

* 1) Add a textfield to your project.
* 2) Change the textfield class to UrbozPicker.

![alt text](http://i.imgur.com/W2h3eJa.png "UrbozPicker Class")

* 3) Add to your view controller the following delegates .
  class ViewController: UIViewController, UITextFieldDelegate, UIPickerViewDataSource, UIPickerViewDelegate.

* 4) Create an IBOutlet to your textfield and name it what ever you want.
* 5) Create an array that contains all the elements/options you want to display to the user in ther pickerview.
* 6) Add the deleagete functions for pickerview (numberOfRowsInComponent, titleForRow, didSelectRow) and its functionality.
* 7) Delegate the textfield pickerview like this:
  countrySelection.selectorPicker.delegate = self.
	countrySelection.selectorPicker.dataSource = self.

Thats it!.
