//
//  myint.swift
//  wang02
//
//  Created by user4 on 2017/9/6.
//  Copyright © 2017年 wang. All rights reserved.
//

import Foundation

func myint(){
    let var1 = Int.init(123)
    print(var1)
    let var2:Int? = Int.init("brad")
    print(var2 as Any)   //as Any 就算是 nil 也要看
    print(var2 ?? 0)
    let var3 = Int.init()
    print(var3)
    let var4 = Int.init(12.3)   //取整數
    print(var4)
    let var5 = Int.init("12" ,radix: 8)       //
    print(var5 as Any)
 
    print(abs(-123))
}


