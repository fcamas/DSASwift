
/*
 You are a developer for a company. Your current project is to develop a system for workers to find tasks they share with their colleagues.
 The company has a system for querying tasks workers are assigned to, returned as a list of (worker ID, task) pairs.

 Write a function that takes in a collection of (worker ID number, task name) pairs and returns,
 for every pair of workers, a collection of all tasks they share.
 */
import Foundation

//Time complexity: O(n^2)
//Space complexity: O(n^2)
let workerTasks1 = [
    ["Worker1", "TaskA"],
    ["Worker2", "TaskB"],
    ["Worker3", "TaskA"],
    ["Worker1", "TaskC"],
    ["Worker2", "TaskD"],
    ["Worker4", "TaskB"],
    ["Worker3", "TaskC"],
    ["Worker4", "TaskD"],
    ["Worker5", "TaskE"],
    ["Worker6", "TaskE"]
]

let workerTasks2 = [
    ["John", "TaskX"],
    ["Jane", "TaskY"],
    ["Bob", "TaskX"],
    ["Alice", "TaskZ"],
    ["John", "TaskY"],
    ["Bob", "TaskZ"],
]

let workerTasks3 = [
    ["Tom", "TaskA"],
    ["Alice", "TaskB"],
    ["Jerry", "TaskC"],
    ["Tom", "TaskB"],
    ["Alice", "TaskA"],
    ["Jerry", "TaskD"],
]

func findTaskAssignments(_ workerTasks: [[String]]) -> [String: [String]] {
    var workerAssignedTasks = [String: Set<String>]()
    var result = [String: [String]]()
    
    // Build a dictionary of tasks for each worker
    for workerTask in workerTasks {
        let worker = workerTask[0]
        let task = workerTask[1]
        
        if workerAssignedTasks[worker] == nil {
            workerAssignedTasks[worker] = Set<String>()
        }
        
        workerAssignedTasks[worker]!.insert(task)
    }
    
    // Find shared tasks for each pair of workers
    let workers = Array(workerAssignedTasks.keys)
    
    for i in 0..<workers.count {
        for j in i+1..<workers.count {
            let worker1 = workers[i]
            let worker2 = workers[j]
            
            let sharedTasks = workerAssignedTasks[worker1]!.intersection(workerAssignedTasks[worker2]!)
            
            if !sharedTasks.isEmpty {
                let key = "\(worker1),\(worker2)"
                result[key] = Array(sharedTasks)
            }
        }
    }
    
    return result
}

let result1 = findTaskAssignments(workerTasks1)
let result2 = findTaskAssignments(workerTasks2)
let result3 = findTaskAssignments(workerTasks3)

print(result1)
print(result2)
print(result3)

