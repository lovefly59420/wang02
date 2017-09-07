//
//  myarray.swift
//  wang02
//
//  Created by user4 on 2017/9/6.
//  Copyright © 2017年 wang. All rights reserved.
//

import Foundation

func myary(){
    let a1 = [1,2,3]       //自動推斷 ＝> array[Int]
    print(type(of:a1))
    print(a1[0])
    let a2:[Any] = [1,2,"brad"]    //  :[] => 陣列[型態]
    print(type(of:a2))
    print(a2[2])
    
    
    //  以下為宣告方式  全部一樣的效果  結果都一樣
    let ary1:[Int] = []
    let ary2:[Int] = Array()    //我以這個為主
    let art3:Array<Int> = []
    let ary4:Array<Int> = Array()
    let ary5 = Array<Int>.init()    //init   初始建構
    
    if ary1.isEmpty{
        print("Yes")
    }else{
        print("no:" + String(ary5.count))  // 可改寫成  print("no: \(ary6.count)")
    }
    let ary7:[Int] = Array(repeating:3, count:6 )
    print(ary7.description)
   
    for v in ary7{   //把陣列每個印出來
        print(v)
    }
    
    // 擲骰子 100次
    
    var p:[Int] = Array(repeating:0 ,count:6)   //[0,0,0,0,0,0]
    var point = -3   // Int
    for _ in 1...100 {
        point = Int(arc4random_uniform(6))      //跑一百次   0~5
        p[point] = p[point] + 1
    }
    print(p.description)
    
    for v in p{
        print(v)
    }
    for i in 1 ... p.count {
        print("\(i)點出現\(p[i-1])次")
    }
   
    
    for (i,value) in p.enumerated(){
        print("\(i+1)點出現\(value)次")
    }
    
    print("===========================")
    
    print(p[0])
    print(p.first!)     // ! 如果沒有值 讓他強制出來
    print(p[p.count - 1])
    print(p.last!)
    
    p += [100]    //陣列後面多一個元素
    print(p.description)
    p += [121,122,123]
    print(p.description)
    
    p.append(111)     //增加元素
    print(p.description)
    
    p.append(contentsOf: [131,132,133])    //增加元素
    print(p.description)
    
    p.insert(141, at: 0)
    p.insert(142, at: 0)
    p.insert(143, at: 0)     //讓最新的永遠擺前面
    print(p.description)
    
    p.remove(at: 3)
    print(p.description)    //刪掉陣列的值
    
    p.replaceSubrange(1...7, with:[400])      //1...7的位置用[400]替換掉
    print(p.description)
    
    p[3...6] = [151,152,153]    //3...6的位置換成 [151,152,153]
    print(p.description)
    
    p[1...2] = []   //1...2 位置 刪掉（remove）
    print(p.description)

    p.reverse()
    print(p.description)  //陣列轉向
    
    
    var p2 = p     // 複製一份資料過去
    print(type(of:p2))
    print(p2.description)
    
    p[2] = 700
    p += [800]
    print(p.description)
    print(p2.description)   // p 改變之後不影響到p2
    
    
    
    
    print("================================")
    
    var i = 100
    for i in 1...10{   //這個i是區域變數   只活在這個迴圈
        print(i)
    }
    print(i)    //i還是100
    
    
    
    
    
 
    
    
    
    
    
    
    
    
    
    
    
    
    
}
