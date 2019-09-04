import Foundation

//Problem One:
//Find the largest integer in a Stack of Ints

func largest(stack: Stack<Int>) -> Int {
    var largestValue: Int = 0
    
    while !stack.isEmpty() {
        var stack = stack
        if let currentValue = stack.pop() {
            if currentValue > largestValue {
                largestValue = currentValue
            }
        }
    }
    return largestValue
}

//Problem Two:
//Find the sum of a Stack of Ints

func sum(stack: Stack<Int>) -> Int {
    var stack = stack
    var sum = 0
    
    while !stack.isEmpty() {
        if let currentValue = stack.pop() {
            sum += currentValue
        }
    }
    return sum
}

//Problem Three:
//Reverse a Stack without using an Array

//Sample input:
/*
 4
 2
 9
 3
 */

//Sample output:
/*
 3
 9
 2
 4
 */

func reverse<T>(stack: Stack<T>) -> Stack<T> {
    var stack = stack
    var reversedStack = Stack<T>()
    
    while !stack.isEmpty() {
        if let currentValue = stack.pop() {
            reversedStack.push(element: currentValue)
        }
    }
    return reversedStack
}


//Problem Four:
//Determine if two stacks are equal

func equalStacks<T: Equatable>(stackOne: Stack<T>, stackTwo: Stack<T>) -> Bool {
    var stackOne = stackOne
    var stackTwo = stackTwo
    var counterOne = 0
    var counterTwo = 0
    
    while !stackOne.isEmpty() {
        stackOne.pop()
        counterOne += 1
    }
    
    while !stackTwo.isEmpty() {
        stackTwo.pop()
        counterTwo += 1
    }
    
    if counterOne == counterTwo {
        while !stackOne.isEmpty() && !stackTwo.isEmpty() {
            if stackOne.pop() != stackTwo.pop() {
                return false
            }
        }
        if stackOne.isEmpty() && stackTwo.isEmpty() {
            return true
        }
    }
    return false
}


//Problem Five:
//Write a function that pushes a new element to the bottom of a Stack

func pushBottom<T>(stack: Stack<T>, newElement: T) -> Stack<T> {
    var stack = stack
    var newStack = Stack<T>()
    var reversedStack = Stack<T>()
    
    newStack.push(element: newElement)
    
    while !stack.isEmpty() {
        if let currentValue = stack.pop() {
            reversedStack.push(element: currentValue)
        }
    }
    
    while !reversedStack.isEmpty() {
        if let currentValue = reversedStack.pop() {
            newStack.push(element: currentValue)
        }
    }
    
    return newStack
}

//Problem Six:
//Determine if the parentheses are balanced in a given String

//Sample input: ((()))
//Sample output: true

//Sample input: ((())
//Sample output: false

//Sample input: (()((())()))
//Sample output: false


func isBalanced(str: String) -> Bool {
    var leftParenStack = Stack<Character>()
    
    for char in str {
        if char == "(" {
            leftParenStack.push(element: char)
        } else if char == ")" {
            if leftParenStack.isEmpty() {
                return false
            } else {
                let popped = leftParenStack.pop()
            }
        }
    }
    
    if !leftParenStack.isEmpty() {
    return false
        
    }
    
    return true
}

//Bonus: Problem Seven:
//Use a stack to convert a number in decimal to binary

func convertToBinary(_ num: Int) -> String {
    return ""
}

