//
//  poker.swift
//  wang02
//
//  Created by user4 on 2017/9/8.
//  Copyright © 2017年 wang. All rights reserved.
//

import Foundation


func poker(){
    let n = 52
    var poker:[Int] = Array()
    for i in 0..<n {poker += [i]}
    print(poker.description)
    poker = shuffle(source: poker)   //呼叫洗牌function
    print(poker.description)

    var players : [[Int]] = [[],[],[],[]]
    
    for (i, card) in poker.enumerated(){
        players[i % 4] += [card]
    }
    
    
    let suits = ["♠️","❤️","♦️","♣️"]
    let values = [" A", " 2", " 3", " 4", " 5", " 6", " 7", " 8", " 9", "10", " J", " Q", " K"]
    for i in 0..<players.count {    // 0..<players.count   是一個range
        players[i].sort()   //排序
        for card in players[i]{
            print("\(suits[card/13])\(values[card%13])", terminator:"  ") //攤牌
        }
        print()
    }
    
    
    
    
    
    for i in 0..<players.count{
        for card in players[i]{
            print("\(card)",terminator:" ")
        }
        print()
    }
}


















func shuffle(source:Array<Int>) -> Array<Int> {
    var poker = source
    let n = poker.count
    var rand = -1
    var temp = -1
    var max = -1
    for i in 0..<n {
        max = n - i
        rand = Int(arc4random_uniform(UInt32(max)))
        
        // swap : poker[rand] <->poker[last]
        
        temp = poker[rand]
        poker[rand] = poker[max - 1]
        poker[max - 1] = temp
    }
    return(poker)

}

// poker = shuffle(source: poker)   呼叫洗牌function
// print(poker.description)






