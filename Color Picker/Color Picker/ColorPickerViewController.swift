//
//  ColorPickerViewController.swift
//  Color Picker
//
//  Created by Tarek Elbendary on 10/9/20.
//  Copyright © 2020 Tarek Elbendary. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController {
    let colors = [Color(name: "red", uiColor: UIColor.red), Color(name: "orange", uiColor: UIColor.orange), Color(name: "yellow", uiColor: UIColor.yellow), Color(name: "green", uiColor: UIColor.green), Color(name: "blue", uiColor: UIColor.blue), Color(name: "purple", uiColor: UIColor.purple)]
    
    @IBOutlet var picker: UIPickerView!
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.red
        label.text = "red"
        picker.dataSource = self
        picker.delegate = self
    }
    

}

extension ColorPickerViewController: UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    
}

extension ColorPickerViewController: UIPickerViewDelegate{
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].name
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label.text = colors[row].name
        self.view.backgroundColor = colors[row].uiColor
    }
}
