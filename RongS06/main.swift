//
//  main.swift
//  RongS06
//
//  Created by iii on 2017/6/12.
//  Copyright © 2017年 iii. All rights reserved.
//

import Foundation

// 結構 struct 只有定義敘述句 不會有執敘述句 printXX

struct Point {
    var x:Int
    var y:Int
}

var p0 = Point(x:1, y:2)
print(p0.x)
print(p0.y)
p0.x = 123
print(p0.x)

print("-------")

struct Point2 {
    var x = 0
    var y = 0
}

var p1 = Point2()
print(p1.x)
print(p1.y)
print("-------")
var p3 = p1
print("p1(\(p1.x),\(p1.y))")
print("p3(\(p3.x),\(p3.y))")

p1.x = 123; p1.y = 321

print("p1(\(p1.x),\(p1.y))")
print("p3(\(p3.x),\(p3.y))")
print("-------")

struct Line {
    var point1: Point2
    var point2: Point2
    func f1(){
    print("OK1")
    }
    static func f2(){
    print("OK2")
    }
    func len() -> Double {
        let xpow = (point1.x-point2.x)*(point1.x-point2.x)
        let ypow = (point1.y-point2.y)*(point1.y-point2.y)
        return sqrt(Double(xpow) + Double(ypow))
    }
}
var line1 = Line(point1:Point2(),point2:Point2(x:3, y:4))
print(line1.point1.x )
//line1.f1()
//Line.f2()
print(line1.len())
print("======")

enum Dirtction {   //定義方向
    case Up, Down, Left, Right
}

var myDir:Dirtction = Dirtction.Left
print(type(of:myDir))
myDir = .Right
switch myDir {
case .Up:
    print("Up")
case .Right:
    print("Right")
default:
    print("Other")
}

enum Town {
    case NorthArea(String), SouthArea(String)
}
let myArea:Town = Town.NorthArea("401")
switch myArea{
case .NorthArea (let zonecode):
    print(zonecode)
default:
    print("OK")
}

let dirUp = 1
let dirDown = 2











//func f2(){
//    print("f2")
//}
//func f2(a:Int){
//    print("f2:2")
//}
//func f2(a:Bool){
//    print("f2:3")
//}
//func f2(a:Int, b:Bool){
//    print("f2:4")
//}
//f2(a:3)
//
//print("------")
//
//func f3(){
//    print("f3")
//}
//func f3(by:(Int,Int) -> Bool )  {
//    print("f3:bool")
//}
//f3()
//f3(by: {(a,b)->Bool in a < b})
//f3(){(a,b)->Bool in
//    print("ok")
//    return a < b
//}
//
//print("------")

