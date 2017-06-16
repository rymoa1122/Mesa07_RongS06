//
//  test1.swift
//  RongS06
//
//  Created by iii on 2017/6/13.
//  Copyright © 2017年 iii. All rights reserved.
//

import Foundation

func test1(){
   
    //正規表示法
    //var str = "Hello, World"
    //
    //if let range = str.range(of: "^H.*d$", options: .regularExpression){
    //    let result = str.substring(with: range) ////把range抽出來
    //    print("OK:\(result)")
    //}else {
    //    print("XX")
    //}
    
    //0
    func mysort(a:Int, b:Int) -> Bool {
        print("\(a) : \(b)")
        return a<b
    }
    print(type(of:mysort))
    
    let a1 = [4,2,7,1]
    let a2 = a1.sorted(by:mysort)
    print(a2.description)
    
    //1 閉包 {()->in}
    let a3 = a1.sorted(by:
    {(a,b) -> Bool in
        print("\(a) : \(b)")
        return a < b
    })
    print(a3.description)
    
    //2 閉包 {()->in} 省略reture
    let a4 = a1.sorted(by:{(a,b) -> Bool in a < b })
    print(a4.description)
    
    //3 $0第一個參數 , $1 第二個參數
    let a5 = a1.sorted(by:{($0 < $1 )}) //第一個參數 第二個參數
    print(a5.description)
    
    //4 特殊案例 省略參數
    let a6 = a1.sorted(by: < )
    print(a6.description)
    
    // tailinf closure
    let a7 = a1.sorted(){(a:Int ,b:Int) -> Bool in
        print("OK")
        return a > b
    }
    print(a7.description)
    
    // 上面例子除了特殊案例 其他都可以使用
    let a8 = a1.sorted() {$0 > $1}
    print(a8.description)
    
    let s1 = ["10", "11", "1", "2", "20"]
    let s2 = s1.sorted();
    print(s2.description)
    
    func strsort(a:String, b:String) -> Bool {
        return Int(a)! < Int(b)!
    }
    let  s3 = s1.sorted(by:strsort)
    print(s3.description)
    
    func f1(myfunc:(Int, Int)->Int, a:Int, b:Int) -> Int{
        return myfunc(a,b)
    }
    
    func f2(a:Int, b:Int) -> Int{
        return a > b ? a : b // a > b 傳回b
    }
    
    func f3(a:Int, b:Int) -> Int{
        return a <= b ? a : b // a <= b 傳回a
    }
    print(type(of:f2))
    let v1 = f1(myfunc: f2, a:3 ,b:4)
    let v2 = f1(myfunc: f3, a:5 ,b:6)
    print(v1)
    print(v2)
    
    func f4(myfonc:() -> (), myfunc2:()->()) {
        myfonc()
        myfunc2()
    }
    
    func f5() {
        print("f5")
    }
    
    func f6() {
        print("f6")
    }
    
    f4(myfonc:f5){
        print("OK")
    }
    
}
func createTWId()->String{
    return createTWId(gender: false)
}
func createTWId(gender:Bool)->String{
    return createTWId(gender: gender, area:4)
}
func createTWId(area:Int)->String{
    return createTWId(gender: true, area:area)
}
func createTWId(gender:Bool ,area:Int) -> String{
    return ""
}
