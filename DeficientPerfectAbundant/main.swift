//
//  main.swift
//  RotatingLetters
//
//  Created by Gordon, Russell on 2018-04-06.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// Get the user input
var rawInput = readLine()

// Print out the input provided
print("You said:")
print(rawInput)

var validInput = 0
while 1==1 {
    guard let givenInput = readLine() else {
        print("Please Insert Inetger")
        continue
    }
    guard let integerInput = Int(givenInput) else {
        print("Please Insert Integer")
        continue
    }
    if givenInput.count < 1 || givenInput.count > 32500 {
        print("Please Stay in assigned integer count of between one and thirty-two thousand five-hundred")
    }
    validInput = integerInput
    break
}


//Process
var storage = 0 // to store the divisors
for i in 1...validInput - 1  {
    if validInput % i == 0 {
        storage += i
    }
}

//Comparing the stored divisors to the validInput
if storage > validInput {
    print("Is Defficient")
} else if storage < validInput {
    print("Is abundant")
} else if storage == validInput {
    print("Is perfect number")
} else {
    print("I don't know")
}

