//
//  ViewController.swift
//  TP1
//
//  Created by Benjamin Girod on 07/11/2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! TableViewCell
                
                let row = indexPath.row
                cell.tache.text = todo[row].nom
    
                return cell
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRow  indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            todo.remove(at: indexPath.row)
            myTableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    var todo = [Todo]()

    @IBOutlet weak var myTableView: UITableView!
    @IBAction func triTache(_ sender: UIButton) {
        todo.sort(by: {$0.datetache! < $1.datetache!})
        
        myTableView.reloadData()
        }ƒ
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
                    /*let description = "Description de la tache"
                    let titre = "tache a effectuer"
        let d = Todo(nom: titre, desc: description)
                    todo.append(d)*/

                
                myTableView.dataSource = self
    }
    
    @IBAction func ajouterTache(_ unwindSegue: UIStoryboardSegue) {
        let vc = unwindSegue.source as! AddTodoViewController
        if vc.titre.text != "" {
            todo.append(Todo(nom: vc.titre.text!, desc: vc.desc.text!, datetache: vc.date.date))
        myTableView.reloadData()
        }
        // Use data from the view controller which initiated the unwind segue
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "details" {
            let afficheTodoViewController = segue.destination as! AfficheTodoViewController
            let myIndexPath = myTableView.indexPathForSelectedRow!
            let row = myIndexPath.row
            afficheTodoViewController.tache = todo[row]
        }
    }

}

