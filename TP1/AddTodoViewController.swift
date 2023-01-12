//
//  AddTodoViewController.swift
//  TP1
//
//  Created by Benjamin Girod on 07/11/2022.
//

import UIKit

class AddTodoViewController: UIViewController {

    @IBOutlet weak var titre: UITextField!
    @IBOutlet weak var desc: UITextField!
    @IBOutlet weak var date: UIDatePicker!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        date.datePickerMode = .date
        date.minimumDate = Date()
        // Do any additional setup after loading the view.
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
