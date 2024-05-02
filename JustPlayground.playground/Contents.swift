import SwiftUI

func bubbleSort(_ array: inout [Int]) {
    let n = array.count
    for i in 0..<n-1 {
        var swapped = false // 이번 패스에서 요소의 교환이 일어났는지를 추적
        for j in 0..<n-1-i {
            if array[j] > array[j+1] {
                // 요소가 잘못된 순서에 있으면 위치를 교환
                let temp = array[j]
                array[j] = array[j+1]
                array[j+1] = temp
                swapped = true // 교환이 일어났음을 표시
            }
        }
        // 만약 이번 패스에서 교환이 일어나지 않았다면, 배열이 이미 정렬된 것이므로 루프를 종료
        if !swapped {
            break
        }
    }
}

// 배열을 출력하는 함수
func printArray(_ array: [Int]) {
    for element in array {
        print(element, terminator: " ")
    }
    print() // 줄바꿈
}

// 메인 코드
var arr = [64, 34, 25, 12, 22, 11, 90]
bubbleSort(&arr)
print("Sorted array:")
printArray(arr)

