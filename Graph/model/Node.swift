//
//  Node.swift
//  Graph
//
//  Created by Angelos Staboulis on 31/10/23.
//

import Foundation
import GameplayKit
class Node:GKGraphNode {
    let id: Int
    var children: [Node]
    
    init(id: Int, children: [Node] = []) {
        self.id = id
        self.children = children
        super.init()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
