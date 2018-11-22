//: Playground - noun: a place where people can play

import UIKit
func BinarySearch(arr:[Int],initial:Int,last:Int,search:Int){
    if (initial <= last) {
        var medium = 0
        medium = initial + (last - initial)/2
        if arr[medium] == search{
        print("Element found in \(medium + 1)" )
        
        }else{
            if arr[medium] > search{
                BinarySearch(arr: arr, initial: initial, last: medium - 1, search: search)
            }
            else if arr[medium] < search{
                BinarySearch(arr: arr, initial: medium + 1, last: last, search: search)
                
            }
            else{
                print("No element find")
            }
        }
    }
}

let lastIndex = numbers.count - 1
let numbers = [1,2,3,5,7,8,9,11,23,45,67,89,112,134,156]
BinarySearch(arr: numbers, initial: 0, last: lastIndex, search:156)





































func BinarySearch<T:Comparable>(a:[T],key:T,range:Range<Int>) -> Int? {
    
    if range.lowerBound <= range.upperBound{
        let midIndex = range.lowerBound + (range.upperBound - range.lowerBound)/2
        print(midIndex)
        if a[midIndex] > key{
            return BinarySearch(a: a, key: key, range: range.lowerBound..<midIndex)
        }
        else if a[midIndex] == key{
            print("Element found in \(midIndex + 1)")
            return midIndex
        }
        else{
            return BinarySearch(a: a, key: key, range: midIndex+1..<range.upperBound)
        }
    }else{
        return nil
    }
}
let numbersa = [1,2,3,5,7,8,9,11,23,45,67,89,112,134,156,199]
BinarySearch(a: numbersa, key: 67, range: 0..<numbersa.count)





