import Cocoa

var greeting = [[112, 42, 83, 119], [56, 125, 56, 49],[15, 78, 101, 43], [62, 98, 114, 108]]
                
                
func flippingMatrix(matrix: [[Int]]) -> Int {
    // any flip
    
    var sum = sumQuadrant(matrix: matrix)
    var newsum = 0
    
    
    
    
    
    repeat {
        let reverse = matrix.reversed() as [[Int]]
        newsum = sumQuadrant(matrix: reverse)
        
    } while newsum < sum
    
    
    
}

func sumQuadrant(matrix: [[Int]]) -> Int {
    return matrix[0][0] + matrix[0][1] + matrix[1][0] + matrix[1][1]
}
