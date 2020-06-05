func mergeSort(array: [Int]) -> [Int] {
    
    guard array.count > 1 else {
        return array
    }
    
    let leftArray = Array(array[0..<array.count/2])
    let rightArray = Array(array[array.count/2..<array.count])
    
    
    return merge(left: mergeSort(array: leftArray), right: mergeSort(array: rightArray))
}

func merge(left: [Int], right: [Int]) -> [Int] {
    var result = [Int]()
    var left = left
    var right = right
    
    while left.count > 0 && right.count > 0 {
        if left.first! < right.first! {
            result.append(left.removeFirst())
        } else {
            result.append(right.removeFirst())
        }
    }
    
    return result + left + right
}

var numbers: [Int] = []

for _ in 0..<50 {
    let randomInt = Int.random(in: 0...1000)
    numbers.append(randomInt)
}

print(numbers)
print(mergeSort(array: numbers))
