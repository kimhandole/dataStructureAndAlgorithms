
let numbers = [1, 4, 6, 7, 10, 12, 18, 19, 23, 24, 34, 44, 58, 65]

func binarySearch(array: [Int], key: Int) -> Bool {
    if array.count == 0 {
        return false
    }
    
    let minIdx = 0
    let maxIdx = array.count - 1
    let midIdx = maxIdx / 2
    let midValue = array[midIdx]
    
    if (key < array[minIdx] || key > array[maxIdx]) {
        print("\(key) is not in the array")
        return false
    }
    
    if (key > midValue) {
        let slice = Array(array[midIdx + 1...maxIdx])
        return binarySearch(array: slice, key: key)
    }
    
    if (key < midValue) {
        let slice = Array(array[minIdx...midIdx - 1])
        return binarySearch(array: slice, key: key)
    }
    
    if key == midValue {
        print("\(key) found in the array")
        return true
    }
    
    return false
}

binarySearch(array: numbers, key: 23)
