import Foundation

var colorArray = ["red","red","red", "yellow", "green", "blue","red", "yellow", "green", "blue", "red", "yellow", "green", "blue","yellow", "green","yellow", "green"]

func findMostCommon(array: [String]) -> [String] {
    
    var result = [String]()
    var dict = [String: Int]()
    
    for item in array {
        if let count = dict[item] {
            dict[item] = count + 1
        } else {
            dict[item] = 1
        }
    }
    
    let max = dict.values.max()
    
    for (item, count) in dict {
        if count == max {
            result.append(item)
        }
    }
    
    return result
}

findMostCommon(array: colorArray)
