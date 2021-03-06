//
//  quickSort.swift
//  QuickSort
//
//  Created by Kelbin David on 2022-03-10.
//

import Foundation

// * Quick Sort (sorts in-place)
// Time Complexity: O(N lgN) -> technically O(N^2) in the worst case
// Space Complexity: O(1)
func quickSort<T: Comparable>(_ arr: inout [T], _ start: Int, _ end: Int) {
  // TODO
  guard start <= end else { return }
  //print(start, " ", end)
  let pivotIndex = partition(&arr, start, end)
  quickSort(&arr, start, pivotIndex - 1)
  quickSort(&arr, pivotIndex + 1, end)
}

/// Returns the index of the pivot
/// - Parameters:
///   - arr: the array
///   - start: the start index
///   - end: the end index
/// - Returns: the index of the pivot after partitioning
func partition<T: Comparable>(_ arr: inout [T], _ start: Int, _ end: Int) -> Int {
  // TODO
  var low = start
  for i in start..<end{
    if arr[i] < arr[end] {
      arr.swapAt(low, i)
      low += 1
    }
  }
  arr.swapAt(low, end)
 return low
}
