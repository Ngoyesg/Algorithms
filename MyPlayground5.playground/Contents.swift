import Cocoa

func lonelyinteger(a: [Int]) -> Int {
    
    let repetitions = a.reduce(into: [Int:Int]()) { dict, number in
        dict[number, default: 0] += 1
    }
    let answer = repetitions.filter { key, value in
        value == 1
    }.keys.first! as Int
    
    return answer

}

lonelyinteger(a: [1,2,3,4,3,2,1])
