# ASRadioButton
Custom Radio Button for IOS (Swift).


Implementation:

1. Drag and Drop ASRadioButton.swift file in the project.
2. Create an Outlet for the Radio Button: 
```
    @IBOutlet weak var maleRadioButton: ASRadioButton!
    @IBOultet weak var femaleRadioButton: ASRadioButton!
```
    
3. Create a method:
```
    fileprivate func setButtonInterface(_ sender: ASRadioButton, check: Bool) {
        sender.isChecked = check
        sender.changeFillState()
    }
```
4. Create a common action for the genderButton and attach to both button:
```
  @IBAction func genderButtonTapped(_ sender: VURadioButton) {
        if sender == maleRadioButton {
            setButtonInterface(maleRadioButton, check: true)
            setButtonInterface(femaleRadioButton, check: false)
        }else {
            setButtonInterface(maleRadioButton, check: false)
            setButtonInterface(femaleRadioButton, check: true)
        }
   }
```
