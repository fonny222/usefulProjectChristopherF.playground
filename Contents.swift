//: Playground - noun: a place where people can play

import UIKit

// random number generator 0-2
let random = Int(arc4random_uniform(3))
let random2 = Int(arc4random_uniform(3))
var whatToEat:String = " "
var whatToDrink:String = " "

// closure multiplies the random number by 2
let calculate = {(ran:Int)->Int in
    return ran*2
}

// function uses the random number to figure out what I should eat for breakfast
func breakFastEats(random:Int) -> String{
    
    if(random == 0){
        
        whatToEat = "Cereal"
    }
    if(random == 1){
        
        whatToEat = "Oatmeal"
    }
    if(random == 2){
        whatToEat = "Pancakes"
    }
    return whatToEat
}

// uses the closure to determine what I should drink for breakfast.
func breakfastDrink(number:Int)-> String{
    if(number == 0){
        whatToDrink = "Water"
    }
    if(number == 2){
        whatToDrink = "Orange Juice"
    }
    if(number == 4){
        whatToDrink = "Milk"
    }
    return whatToDrink
}

// call the function breakFastEats
print("You should Eat",breakFastEats(random),"For Breakfast!")

// call the breakfastDrink and pass the closure calculate as an argument
print("You should drink",breakfastDrink(calculate(random2)),"with your",breakFastEats(random))

