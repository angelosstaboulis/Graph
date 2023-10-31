//
//  Graph.swift
//  Graph
//
//  Created by Angelos Staboulis on 31/10/23.
//

import Foundation
import GameplayKit

class Graph:GKGraph {
  var visited: Set<Int> = []

  var visitedNew: Set<Int> = []

  func dfs(_ root: Node?)  {

      visited.insert(root!.id)

      for child in root!.children {
            if !visited.contains(child.id) {
                debugPrint("child-dfs=",child.id)
                dfs(child)
            }
        }
    }
        
    func bfs(root: Node?) {
        let queue = Queue(list: [Node]())
        queue.push(data: root!)
        visitedNew.insert(root!.id)
        while !queue.isEmpty() {
            let current = queue.pop()
            for child in current.children {
                if !visitedNew.contains(child.id) {
                    debugPrint("child-bfs=",child.id)
                    queue.push(data: child)
                    bfs(root: child)
                }
            }
        }
    }
}
