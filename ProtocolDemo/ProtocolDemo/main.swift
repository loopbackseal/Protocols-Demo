//
//  main.swift
//  ProtocolDemo
//
//  Created by Young Soo Hwang on 2022/01/11.
//

protocol CanFly {
    func fly()
}

class Bird {
    
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("The bird makes a new bird in a shell.")
        } else {
            print("He can't lay eggs.")
        }
    }
    
}

class Eagle: Bird, CanFly {
    func fly() {
        print("The eagle fly into sky")
    }
    
    func soar() {
        print("The eagle glides in the air using air currents.")
    }
}

class Penguin: Bird {
    func swim() {
        print("The penguin paddles through the water.")
    }
}

struct FlyingMuseum {
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
    }
}

struct Airplane: CanFly {
    func fly() {
        print("The airplane uses its engine to lift off into the air.")
    }
}

let myEagle = Eagle()
myEagle.fly()
myEagle.layEgg()
myEagle.soar()
myEagle.isFemale = false
myEagle.layEgg()

let myPenguin = Penguin()
//myPenguin.fly()
myPenguin.swim()
myPenguin.layEgg()

let museum = FlyingMuseum()
museum.flyingDemo(flyingObject: myEagle)

let airplane = Airplane()
airplane.fly()

/* class ClassName : SuperClass, FirstProtocol, AdditionalProtocol {
    var something
 }
 That's how we use UITextFieldDelegate as First Protocol
 */
