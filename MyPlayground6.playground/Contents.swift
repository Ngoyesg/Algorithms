import Cocoa

func diagonalDifference(arr: [[Int]]) -> Int {
    
    var primaryDiagonal = [Int]()
    var secondaryDiagonal = [Int]()

    for index in 0..<arr.count {
        
        let row = arr[index]
        
        for element in 0..<row.count {
            
            if index == element {
                primaryDiagonal.append(row[element])
                secondaryDiagonal.append(row.reversed()[index])
            }
        }
   
    }
    
    
    let firstResult = primaryDiagonal.reduce(0, +)
    
    let secondResult = secondaryDiagonal.reduce(0, +)
    
    return abs(firstResult - secondResult)
}

diagonalDifference(arr:[[11,2,4], [4,5,6], [10,8,-12]])

