//
//  Todo.swift
//  TP1
//
//  Created by Benjamin Girod on 07/11/2022.
//

import Foundation

class Todo {
    var nom: String
    var desc: String
    var datetache: Date?
    
    init(nom: String, desc: String, datetache: Date? = nil){
        self.nom = nom
        self.desc = desc
        self.datetache = datetache
    }
}
