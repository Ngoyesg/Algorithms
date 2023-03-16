import Cocoa


func countingSort(arr: [Int]) -> [Int] {
    var zeros = String(repeating: "0", count: 100).compactMap { char in
        Int(String(char))
    }
    arr.map { number in
        zeros[number] += 1
    }
    return zeros
}

countingSort(arr: [1,1,3,2,1])
