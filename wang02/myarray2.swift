//
//  myarray2.swift
//  wang02
//
//  Created by user4 on 2017/9/7.
//  Copyright © 2017年 wang. All rights reserved.
//

import Foundation

func ary2test(){
    
    var ary1 = [[1,2],[3,4,5],[6,7,8,9,10]]   //二維陣列
    print(type(of:ary1))    // 自動推斷為 Array<Array<Int>>
    print(ary1.description)
    print(ary1[2].description)
    print(ary1.count)
    print(ary1[2][1])
    ary1 += [[11,12,13]]
    print(ary1.description)
    
    ary1[1] += [51,52]
    print(ary1.description)
    
    for (ii,vv) in ary1.enumerated() {   //找出 [0,1,2,3]
        print("\(ii)-------")
        for (i,v) in vv.enumerated(){    //再找出 [0-0,0-1] , [1-0,1-1,1-2]   [.......]
            print("\(i) : \(v)")
        }
    }
    
    
    
    print("====================================")
    
    
    //  99乘法表 http://epaper.gotop.com.tw/PDFSample/ACL049200.pdf
    
    
    
    var ii = 0
    for k in 0..<3{
        for j in 1...9{
            for i in 2...5{
                ii = i + 4 * k
                print("\(ii) * \(j) = \(ii*j)",terminator:"\t")
                
            }
            print()
        }
        print("------------------------------------")
    }
    
    
    var ary3 = [1,52,53,27,47,97]
    print(ary3)
    print(ary3.description)
    
    ary3.sort()    //排序
    print(ary3)
    
    ary3.sort(by: {(a1,b1)->Bool in return a1 > b1})
    print(ary3.description)
    
    
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}


