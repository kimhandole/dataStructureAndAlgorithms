let sequence : Array<Int> = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

//linear time - O(n)
func linearSearch(for value: Int, list: Array<Int>) -> Bool {
    
    //chaek all possible values
    for number in list {
        if number == value {
            return true
        }
    }
    
    return false
}

// execute search
let isFound: Bool = linearSearch(for: 8, list: sequence)
