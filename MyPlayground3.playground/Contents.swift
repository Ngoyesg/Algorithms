import Cocoa

func timeConversion(s: String) -> String {
            
    var hour = String(s.prefix(2))
    
    let minutesAndSeconds = s.dropFirst(3).dropLast(2)
    
    let isMorning: Bool = (s.suffix(2) == "AM")
        
    if isMorning && hour == "12" {
        hour = "00"
    }
    
    if !isMorning && hour != "12" {
        hour = String((Int(hour)! + 12))
    }
    
    return "\(hour):\(minutesAndSeconds)"
}

timeConversion(s: "12:05:45PM")


//
//07:05:45PM
//19:05:45
