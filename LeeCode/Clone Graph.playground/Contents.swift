import UIKit

/*
Clone Graph

Given a reference of a node in a connected undirected graph.

Return a deep copy (clone) of the graph.

Each node in the graph contains a value (int) and a list (List[Node]) of its neighbors.

class Node {
    public int val;
    public List<Node> neighbors;
}
*/

//Time complexity: O(V + E) - V represents the number of vertices (nodes) and E represents the number of edges in the graph.
//Space complexity: O(V) - Space used by the visited dictionary and recursion stack.
class Node {
    var val: Int
    var neighbors: [Node]

    init(_ val: Int) {
        self.val = val
        self.neighbors = []
    }
}

func cloneGraph(_ node: Node?) -> Node? {
    guard let startNode = node else {
        return nil
    }

    var visited = [Int: Node]() // Dictionary to keep track of visited nodes

    func dfs(_ originalNode: Node?) -> Node? {
        guard let originalNode = originalNode else {
            return nil
        }

        // If the node is already visited, return the cloned node
        if let clonedNode = visited[originalNode.val] {
            return clonedNode
        }

        // Create a new node with the same value
        let clonedNode = Node(originalNode.val)

        // Mark the current node as visited
        visited[originalNode.val] = clonedNode

        // Recursively clone the neighbors
        clonedNode.neighbors = originalNode.neighbors.map { dfs($0)! }

        return clonedNode
    }

    return dfs(startNode)
}
