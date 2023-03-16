import Cocoa

func findMedian(arr: [Int]) -> Int {
    let sortedArray = arr.sorted { x, y in x < y }
    let meddianIndex = arr.count / 2
    return sortedArray[meddianIndex]
}

findMedian(arr: [1,3,5,7,9,10])
