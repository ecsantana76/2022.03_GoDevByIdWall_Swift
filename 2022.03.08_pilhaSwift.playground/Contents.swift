import UIKit

class Stack {
    var stack: [String] = []
    
    func displayFull() {
        print("Pile Full")
        print(stack)
    }
    
    func displayEmpty() {
        print("Pile Empty")
        print(stack)
    }
    
    func pileUp(_ value: String) {
        stack.append(value)
    }
    
    func pileDown() {
        stack.removeLast()
    }
    
    func emptyPile() {
        stack = []
    }
}

let stack = Stack()

// filling the Pile

/*  01) Verbose Way
stack.pileUp("January")
stack.pileUp("February")
stack.pileUp("March")
stack.pileUp("April")
stack.pileUp("May")
stack.pileUp("June")
stack.pileUp("July")
stack.pileUp("August")
stack.pileUp("September")
stack.pileUp("October")
stack.pileUp("November")
stack.pileUp("December")
*/

// 02) Fast Way

var months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

for month in months{
  stack.pileUp(month)
}

stack.displayFull()

// emptying the Pile

// 1) Verbose Way

stack.pileDown()
stack.pileDown()
stack.pileDown()
stack.pileDown()
stack.pileDown()
stack.pileDown()
stack.pileDown()
stack.pileDown()
stack.pileDown()
stack.pileDown()
stack.pileDown()
stack.pileDown()


/*
02) Fast Way ?

*var length:[Int] = stack.count

for (stack.count) in stack{
  stack.pileDown(stack)
}
*/

stack.displayEmpty()
