import Foundation

var one = Node(id: 1)
var two = Node(id: 2)
var three = Node(id: 3)
var four = Node(id: 4)
var five = Node(id: 5)

one.children = [two, three,four,five]
five.children = [one]

let graph = Graph()
graph.add([one,two,three,four,five])
graph.dfs(one)
graph.bfs(root: one)
