import UIKit


//Task 1: Function Basics
func greetUser (name:String) -> String {
    
    
    return ("hi \("")\(name)")
}

greetUser(name: "khaled")
greetUser(name: "Ali")



// Task 2: Function Overloading
func calculateArea(radius:Double) -> Double{
    
    let pi = 3.14
    
    return pi*radius*2
    
}
calculateArea(radius: 9)


func calculateArea(length:Double,width:Double)->Double{
    
    
    return length*width
}
calculateArea(length: 15, width: 5)



// Task 3: Nested Functions
func mathOperation (num1:Int , num2:Int , operation:String) -> Int{
    
    func add () -> Int{
        
            num1 + num2
       }
        
    
    func subtract () -> Int{
        
            num1 - num2
       }
    
    func multiply () -> Int{
        
            num1 * num2
       }
    
    func divide () -> Int{
        
            num1 / num2
       }
    
    
        switch operation{

        case "add":
            return add()

        case "subtract":
            return subtract()

        case "multiply":
            return multiply()

        case "divide":
            return divide()

        default:
            ""
        }
        
       return (num1)
   
    }
   
mathOperation(num1: 5, num2: 2, operation: "add")
mathOperation(num1: 10, num2: 5, operation: "subtract")
mathOperation(num1: 6, num2: 2, operation: "multiply")
mathOperation(num1: 2, num2: 1, operation: "divide")




// Task 4: Higher-Order Functions
var array4 :Array<Int> = [1,2,4,5,6,9]

let arr = array4.map{($0 + 1)}



let ar = arr.filter { i in
    i % 2 == 0
}


ar.reduce(0, +)



// Task 5: Closures
let multiply = {(num:Int) ->Int in
  
    num*num
}

var array5 : Array<Int> = [2,5,37,8,9]
let mult = array5.map(multiply)

mult.forEach {
    print($0)
}
