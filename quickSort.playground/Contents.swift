let numbers = [7, 2, 6, 3, 9, 4]

func quickSort(array: [Int]) -> [Int] {
    var less = [Int]()
    var greater = [Int]()
    var equal = [Int]()
    
    if array.count > 1 {
        let pivot = array[0]
        
        for n in array {
            if n < pivot {
                less.append(n)
            }
            
            if n > pivot {
                greater.append(n)
            }
            
            if n == pivot {
                equal.append(n)
            }
        }
        
        return (quickSort(array: less) + equal + quickSort(array: greater))
    } else {
        return array
    }
}

print(quickSort(array: numbers))
