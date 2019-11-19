import UIKit

// Implicit & Explicit Type
let name: String = "A"          // Explicit
let newName = "the developer"   // Implicit

let age: Int = 20
let newAge = 18
let myGPA: Double = 3.54

// If could return "URL" or "nothing"
let myFace = "https://..."

// Optional type allows storing nil
let myName: String? = nil
let yourName: String? = "ABC"

print(myName)
print(yourName)

let bobAge: Int? = nil
var robAge: Int? = 123
let danAge: Int? = 3

// bAge + cAge -> not working
robAge = 456

// Forced Unwrapping
let newRobAge = robAge!
print(newRobAge)

let newDanAge = danAge!
print(newDanAge)

// Problem
var image: String? = nil
//let normalImage = image! // -> Error

// Implicit Unwerapping
// Conditonal Statement
let imageFormFacebook: String? = "Bob's Face"

if let normalImage = imageFormFacebook {
    print(normalImage)
} else {
    print("There is no image")
}
