import Foundation

func calculate() {
    print("Enter the first number:")
    guard let num1 = Double(readLine()!) else {
        print("Invalid input")
        return
    }
    
    print("Enter the second number:")
    guard let num2 = Double(readLine()!) else {
        print("Invalid input")
        return
    }
    
    print("Select an operation:")
    print("1. Addition (+)")
    print("2. Subtraction (-)")
    print("3. Multiplication (*)")
    print("4. Division (/)")
    
    guard let choice = Int(readLine()!) else {
        print("Invalid choice")
        return
    }
    
    var result: Double = 0
    
    switch choice {
    case 1:
        result = num1 + num2
    case 2:
        result = num1 - num2
    case 3:
        result = num1 * num2
    case 4:
        if num2 != 0 {
            result = num1 / num2
        } else {
            print("Error: Division by zero is not allowed")
            return
        }
    default:
        print("Invalid choice")
        return
    }
    
    print("Result: \(result)")
}

calculate()
