//
//  Checkpoint5.swift
//  
//
//  Created by Михаил Медведев on 29.01.2024.
//

//Your job is to:
//Filter out any numbers that are even
//Sort the array in ascending order
//Map them to strings in the format “7 is a lucky number”
//Print the resulting array, one item per line
//So, your output should be as follows:
// 7 is a lucky number
// 15 is a lucky number
// 21 is a lucky number
// 31 is a lucky number
// 33 is a lucky number
// 49 is a lucky number

func luckyNumbersReady(for numbers: [Int] ) {
    // 1 condition: Filter out any numbers that are even
    let luckyNumbersEven = numbers.filter {!$0.isMultiple(of: 2)}
    // 2 condition: Sort the array in ascending order
    let luckyNumbersSorted = luckyNumbersEven.sorted { $0 < $1 }
    // 3 condition: Map them to strings in the format “7 is a lucky number”
    let luckyNumbersAdd = luckyNumbersSorted.map { "\($0) is a lucky number" }
    //result
    for luckyNumbersPrint in luckyNumbersAdd { print(luckyNumbersPrint)}
}

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

luckyNumbersReady(for: luckyNumbers)
