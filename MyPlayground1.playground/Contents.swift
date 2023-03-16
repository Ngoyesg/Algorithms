import Foundation

//Print the following lines, each to
//
//decimals:
//
//    proportion of positive values
//    proportion of negative values
//    proportion of zeros


func plusMinus(arr: [Int]) -> Void {
        
    let proportions = arr.reduce(into: (positive: 0.0, negative: 0.0, zeros: 0.0)) {  summary, num in
       
        if num > 0 {
            summary.positive += 1.0 / Double(arr.count)
        }
        if num < 0 {
            summary.negative += 1.0 / Double(arr.count)
        }
        if num == 0 {
            summary.zeros += 1.0 / Double(arr.count)
        }
    }
    
    print(String(format: "%6f", proportions.positive))
    print(String(format: "%6f", proportions.negative))
    print(String(format: "%6f", proportions.zeros))
}

let x = plusMinus(arr: [-4, 3, -9, 0, 4, 1])
