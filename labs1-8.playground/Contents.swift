//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, System Analysis my name is Dima"

//----------------------------------------------------------
//-----------------------LAB-8-16-02-15---------------------
//----------------------------------------------------------

//let matrix = [
//    [-1,3,3,4,5],
//    [2,-1,4,5,5],
//    [2,1,-1,3,4],
//    [1,0,2,-1,2],
//    [0,0,1,3,-1]
//]
//let matrix2 = [[0,1,1],[2,0,2],[2,1,0]]
//
//func compare2array(arr1: [Int], arr2: [Int]) -> Bool {
//    if arr1.count == arr2.count {
//        for i in 0..<arr1.count {
//            if arr2[i] > arr1[i] {
//                return false
//            }
//        }
//        return true
//    }
//    return false
//}
//
//func lab8(matrix: [[Int]]){
//    
//    for i in 0..<matrix.count{
//        let arr1 = matrix[i]
//        var arr2 = [Int]()
//        for j in 0..<matrix.count{
//            arr2.append(matrix[j][i])
//        }
//        if compare2array(arr1, arr2: arr2) {
//            print("Condorse Winner is...row \(i) - \(arr1)")
//        }
//    }
//    
//    
//}
//lab8(matrix)
//----------------------------------------------------------
//-----------------------LAB-7-16-02-15---------------------
//----------------------------------------------------------
//var fuckIt = [
//[6,4,3.5,6.5,5,5,4,6,3,7,4,6],
//[7,3,4.5,5.5,4,6,3,7,4,6,4,6],
//[6,4,5,5,3,7,4,6,4,6,5,5],
//[5,5,5,5,4,6,5,5,3,7,3,7]
//]
//fuckIt = fuckIt.map{(line: [Double]) -> [Double] in line.map{$0 / 10}}
//
//func lab7(matrix: [[Double]]) {
//    
//    var sumMatrix = [Double]()
//    
//    for i in 0..<matrix.first!.count {
//        var value = 0.0
//        for j in 0..<matrix.count {
//            value += matrix[j][i]
//        }
//        sumMatrix.append(value)
//    }
//    
//    print(sumMatrix)
//    
//    print("W1 = \((sumMatrix[0] + sumMatrix[2] + sumMatrix[4]) / sumMatrix.reduce(0, combine: +) )")
//    print("W2 = \((sumMatrix[1] + sumMatrix[6] + sumMatrix[8]) / sumMatrix.reduce(0, combine: +))")
//    print("W3 = \((sumMatrix[3] + sumMatrix[7] + sumMatrix[10]) / sumMatrix.reduce(0, combine: +))")
//    print("W4 = \((sumMatrix[5] + sumMatrix[9] + sumMatrix[11]) / sumMatrix.reduce(0, combine: +))")
//}
//
//lab7(fuckIt)
//----------------------------------------------------------
//-----------------------LAB-6-16-02-15---------------------
//----------------------------------------------------------

//let expert1 = [
//    [0,13.0/16.0,1.0/16.0],
//    [3.0/16.0,0,7.0/16.0],
//    [12.0/16.0,11.0/16.0,0]
//]
//var expert2 = [
//    [0,11.0/16.0,4.0/16.0],
//    [5.0/16.0,0,5.0/16.0],
//    [12.0/16.0,11.0/16.0,0]
//]
//let experts = [expert1, expert2 ]
//
//func lab6(experts: [[[Double]]]) {
//    print("Находим оценки предпочтений:")
//    
//    var expertsMarks = [[Double]]()
//    for expert in 0..<experts.count {
//        
//        expertsMarks.append(experts[expert].map { $0.reduce(0, combine: +)})
//        print("Expert\(expert):\(expertsMarks[expert])")
//    }
//    let normValue = experts.first!.first!.count * (experts.first!.first!.count - 1)
//    print("Нормирование оценки:")
//
//    print(normValue)
//    print("Искомые веса целей::")
//
//    for i in 0..<expertsMarks.first!.count {
//        var value = 0.0
//        for j in 0..<expertsMarks.count {
//            value += expertsMarks[j][i] / 6
//        }
//        print("W\(i) = \(value)")
//    }
//}
//
//lab6(experts)


//----------------------------------------------------------
//-----------------------LAB-5-16-02-15---------------------
//----------------------------------------------------------

//let matrix = [
//    [3,5,2,1,4],
//    [2,3,1,4,5],
//    [4,2,1,3,5],
//    [3,5,2,1,4],
//    [1,4,2,3,5]
//]
//
//func lab5(inputMatrix : [[Int]]) {
//    print(inputMatrix)
//    var modifiedMatrix = [[Double]]()
//    for line in inputMatrix{
//        modifiedMatrix.append(line.map{ Double($0) / Double(line.reduce(0, combine: +))})
//    }
//    print(modifiedMatrix)
//    
//    for i in 0..<modifiedMatrix.first!.count {
//        var value = 0.0
//        for j in 0..<modifiedMatrix.count {
//            value += modifiedMatrix[j][i]
//        }
//        print("W\(i) = \(value / Double(modifiedMatrix.count))")
//    }
//
//}
//
//lab5(matrix)

//----------------------------------------------------------
//-----------------------LAB-4-16-02-15---------------------
//----------------------------------------------------------

//let matrix = [
//    [2,3,4,1],
//    [3,1,2,4],
//    [1,4,3,2],
//    [1,3,4,2]
//]
//
//func lab4(inputMatrix: [[Int]]) {
//    
//    var modifiedMatrix = [[Int]]()
//    print(inputMatrix)
//    for line in inputMatrix {
//        modifiedMatrix.append(line.map{ line.maxElement()! - $0})
//    }
//    print(modifiedMatrix)
//    print("Cуммарные оценки предпочтения")
//    var weightAims = [Int]()
//    for i in 0..<modifiedMatrix.first!.count {
//        var value = 0
//        for j in 0..<modifiedMatrix.count {
//            value += modifiedMatrix[j][i]
//        }
//        weightAims.append(value)
//    }
//    print(weightAims)
//    
//    print(weightAims.map{ Double($0) / Double(weightAims.reduce(0, combine: +))})
//    
//}
//
//lab4(matrix)



//----------------------------------------------------------
//-----------------------LAB-3-16-02-15---------------------
//----------------------------------------------------------

//let matrixVal = [
//    [0.2,0.14,0.16,0.5],
//    [0.4,0.25,0.15,0.2]
//]
//let expertVal = [8,8.5]
//func lab3(experts: [Double], matrixValues: [[Double]]) {
//    
//    let expertsValues = experts.map { ($0 / experts.reduce(0, combine: +))}
//    for expert in 0..<expertsValues.count {
//        print("Z\(expert) = \(expertsValues[expert])")
//    }
//    
//    print("\nИскомые веса целей\n")
//    var aimDict = [String : Double]()
//    for i in 0..<matrixValues.first!.count {
//        var value = 0.0
//        var prStr = "W\(i) = "
//        for j in 0..<matrixValues.count {
//            prStr += "\(matrixValues[j][i]) * \(expertsValues[j]) + "
//            value += (matrixValues[j][i] * expertsValues[j])
//        }
//        aimDict["W\(i)"] = value
//        print("\(prStr) = \(value)")
//    }
//    print("")
//    print(aimDict.sort{ $0.1 > $1.1})
//}
//
//lab3(expertVal, matrixValues: matrixVal)


//----------------------------------------------------------
//-----------------------LAB-2-16-02-15---------------------
//----------------------------------------------------------

//let inputArrayDecision: [[Int]] = [
//    [0,0,1],
//    [1,0,1],
//    [0,0,0]
//]
//
//func calculateValuesOfEveryIdea(ideas: [[Int]]) {
//    
//    //idea Votes
//    var count = 0
//    var ideasValue = [Int]()
//    for idea in ideas {
//        let ideaValue = idea.reduce(0, combine: +)
//        ideasValue.append(ideaValue)
//        print("ideas[\(count)] = \(ideaValue)")
//        count++
//    }
//    
//    let ideasValueCount = ideasValue.reduce(0, combine: +)
//    
//    if ideasValueCount > 0 {
//        count = 0
//        for ideaValue in ideasValue {
//            print("ideas[\(count)] = \(Double(ideaValue) / Double(ideasValueCount))")
//            count++
//        }
//    } else {
//        print("Your ideasValue equal ZERO, check your Input ideas array")
//    }
//}
//
//calculateValuesOfEveryIdea(inputArrayDecision)


