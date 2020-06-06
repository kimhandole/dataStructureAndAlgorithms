import Foundation

let numbers = [1, 3, 6, 7, 7, 12, 14]


// 1. Brute Force - Nested For Loop compare all (n2)
func twoSum1(array: [Int], sum: Int) -> Bool {
    
    for i in 0..<array.count-1 {
        for j in i+1..<array.count {
            if array[i] + array[j] == sum {
                print("twoSum1")
                print(array[i], array[j])
                return true
            }
        }
    }
    
    
    return false
}

twoSum1(array: numbers, sum: 20)


// 2. Binary Search for compliment (because it's sorted) n log n
func twoSum2(array: [Int], sum: Int) -> Bool {
    
    for i in 0..<array.count {
        let complement = sum - array[i]
        
        var tmp = array
        tmp.remove(at: i)
        
        if binarySearch(array: tmp, key: complement) {
            print("twoSum2")
            print(array[i], complement)
            return true
        }
    }
    
    return false
}

func binarySearch(array: [Int], key: Int) -> Bool {
    if array.count == 0 {
        return false
    }
    
    let minIdx = 0
    let maxIdx = array.count - 1
    let midIdx = maxIdx / 2
    let midValue = array[midIdx]
    
    if key < array[minIdx] || key > array[maxIdx] {
        return false
    }
    
    if key < midValue {
        let slice = Array(array[minIdx...midIdx-1])
        return binarySearch(array: slice, key: key)
    }
    
    if key > midValue {
        let slice = Array(array[midIdx+1...maxIdx])
        return binarySearch(array: slice, key: key)
    }
    
    if key == midValue {
        return true
    }
    
    return false
}

twoSum2(array: numbers, sum: 20)


// 3. Move pointer from either end - linear
func twoSum3(array: [Int], sum: Int) -> Bool {
    var frontIdx = 0
    var endIdx = array.count - 1
    
    while frontIdx < endIdx {
        let addition = array[frontIdx] + array[endIdx]
        
        if addition == sum {
            print("twoSum3")
            print(array[frontIdx], array[endIdx])
            return true
        } else if addition < sum {
            frontIdx += 1
        } else if addition > sum {
            endIdx -= 1
        }
        
        
    }
    
    return false
}


twoSum3(array: numbers, sum: 20)
