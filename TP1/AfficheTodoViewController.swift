//
//  ModifyTodoViewController.swift
//  TP1
//
//  Created by Benjamin Girod on 06/12/2022.
//

import UIKit


class AfficheTodoViewController:  UIViewController {
    var tache: Todo?

    
    @IBOutlet weak var titre: UILabel!
    @IBOutlet weak var desc: UILabel!
    @IBOutlet weak var date: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let todo = tache{
            titre.text = todo.nom
            desc.text = todo.desc
            if let datetache = todo.datetache{
                let formatDate = DateFormatter()
                formatDate.dateFormat = "dd/MM/yyyy"
                date.text = formatDate.string(from: datetache)
            } else {
                date.text = "Pas de date"
            }
            
            
        }
        
    }
        // Do any additional setup after loading the view.
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}
