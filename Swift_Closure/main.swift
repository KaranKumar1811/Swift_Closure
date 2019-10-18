//
//  main.swift
//  Swift_Closure
//
//  Created by MacStudent on 2019-10-18.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

//Closures
// Closures are Reference Type not Value Type
//1.Simple Example
let divide = {
    (val1: Int,val2 : Int) -> Int in
    return val1/val2
}

let result = divide(10,2)
print(result)

// 2.Expression Example

let concatStr = {
    (s1: String, s2: String) -> String in
    let val = String(format: "%@ %@", s1, s2)
    return val//"\(s1)\(s2)"
}
let myFunc : (String,String) -> String
myFunc=concatStr
let myResult = myFunc("Toronto", "City")
print(myResult)



// 3. Single Expression Implisit
var myArray:[Int]=[3,4,5,6,73,3,43]

let sum = myArray.map { (x) -> Int in
    return x + 1
}

print(sum)


var desc = myArray.sorted(by: { (n1, n2) -> Bool in
    return n1 > n2
})

print(desc)

var stringArray:[String]=["kaj","dsfsf","adsad","23fsdf","sdfsg"]

var StringDesc = stringArray.sorted(by: { (a1, a2) -> Bool in
    return a1 > a2
})
print(StringDesc)



var add = {
    (n1: Int,n2: Int)-> Bool in
    return n1 > n2
}

desc=myArray.sorted(by: add)
print(desc)


desc=myArray.sorted(by: >)
print(desc)

// Escaping

func call(completion: @escaping (_:Bool) -> Void )
{
    sleep(3)
    completion(false)
}
print("Start")
call {
    (flag) in
    print(flag)
}
print("End")

func moreSUM ( sumFunc: @escaping( _:Int)-> Void)
{
    for x in 1...10
    {
    sumFunc(x)
        sleep(2)
    }
}

moreSUM {(y) in
    print(y)
}




