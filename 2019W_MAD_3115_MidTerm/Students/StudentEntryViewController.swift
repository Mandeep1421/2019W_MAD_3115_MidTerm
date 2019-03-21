//
//  StudentEntryViewController.swift
//  2019W_MAD_3115_MidTerm
//
//  Created by MacStudent on 2019-03-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class StudentEntryViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource
{
    var Gender:String = ""
    @IBOutlet weak var gen: UILabel!
    var Course = ["MADT", "CPCT", "CSE", "BAMT","PAMT"]
    @IBOutlet weak var birth: UILabel!
    var total:Float?
    var date:String = ""
    var Marks = [Float]()
    @IBOutlet weak var txtID: UITextField!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBAction func segGender(_ sender: UISegmentedControl)
    {
   Gender = String(sender.selectedSegmentIndex)
    }
    
    @IBOutlet weak var course: UIPickerView!
    @IBOutlet weak var corse: UILabel!
    @IBOutlet weak var lblcurs: UILabel!
    @IBOutlet weak var txtSub1: UITextField!
    @IBOutlet weak var txtSub2: UITextField!
    @IBOutlet weak var txtSub3: UITextField!
    @IBOutlet weak var txtSub4: UITextField!
    @IBOutlet weak var txtSub5: UITextField!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.course.delegate = self
        self.course.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func birth(_ sender: UIDatePicker) {
        let bDate = DateFormatter()
        bDate.dateFormat = "dd-MM-YYYY"
        let startDate = bDate.string(from: sender.date)
        date=startDate
    }
    @IBAction func btnCalculate(_ sender: UIButton)
    {
       Marks.append(Float(txtSub1.text!)!)
        Marks.append(Float(txtSub2.text!)!)
        Marks.append(Float(txtSub3.text!)!)
        Marks.append(Float(txtSub4.text!)!)
        Marks.append(Float(txtSub5.text!)!)
        
        let s1=Student(StudentId: txtID.text!, StudentName: txtName.text!, Birthday: birth.text!, Gender: gen.text!, Course: corse.text!, Marks:Marks )
        //total! = s1.calculation(sid:txtEmail.text!, c: s1)
        let ab = UIStoryboard(name: "Main", bundle: nil)
        let StudentVC = ab.instantiateViewController(withIdentifier: "Student2") as! StudentResultViewController
        self.navigationController?.pushViewController(StudentVC, animated: true)
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.Course.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return self.Course[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lblcurs.text = self.Course[self.course.selectedRow(inComponent: 0)]
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
