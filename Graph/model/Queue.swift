//
//  Queue.swift
//  Graph
//
//  Created by Angelos Staboulis on 31/10/23.
//

import Foundation
class Queue{
    
    var list:[Node] = []
    
    init(list:[Node]){
        self.list = list
    }
    
    func push(data:Node){
        list.append(data)
    }
    func pop( )-> Node{
        if self.list.isEmpty {
            return Node(id: 0)
        }else{
            return list.removeFirst()
        }
    }
    func isEmpty() -> Bool{
        return list.count == 0
    }
}
