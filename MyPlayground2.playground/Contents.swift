import Cocoa

func miniMaxSum(arr: [Int]) -> Void {
    let sortedArray = arr.sorted { x, y in x < y }
    let minSum = sortedArray.dropLast().reduce(0, +)
    let maxSum = sortedArray.dropFirst().reduce(0, +)
    print("\(minSum) \(maxSum)")
}

miniMaxSum(arr: [1,3,5,7,9])
