//
//  mystring.swift
//  wang02
//
//  Created by user4 on 2017/9/8.
//  Copyright © 2017年 wang. All rights reserved.
//

import Foundation

func mystr(){
    
    var name = "love"
    print(type(of:name))
    
    name += "fly戀翔"
    print(name)
   
    
    
    print(name.utf8.count)    //  utf8 ＝> 一個中文字為3計算
    print(strlen(name))
    
    let chars = Array(name.characters)
    print(type(of:chars))
    print(chars.count)
    print(chars[4])
    
    let nname = String(chars)
    print(type(of:nname))    //字源字串互換
    print(nname)
    
    let cs1 = ["a","b","c","d"]
    print(type(of:cs1))
    print(cs1)
    
    let cs2:[Character] = ["a","b","c","d"]
    print(type(of:cs2))
    print(cs2)
    
    
    let ns2 = String(cs2)  //能用字元陣列
    print(ns2)
    
    var letters = "abcdefghijklmnopqrstuvwxyz"
    print(letters)
    print(letters.unicodeScalars)
    
    
    let range1 = getstringrange(source: letters, from: 4, to: 9)
    print(letters.substring(with: range1))
    print(mysubstrv2(source: letters, from: 4, to: 9))

    let range = getstringrange(source: letters, from: 4, to: 9)
    letters.replaceSubrange(range, with: "1234")
    print(letters)
    
    
    let range2 = getstringrange(source: letters, from: 4, to: 8)
    letters.removeSubrange(range2)
    print(letters)
    
}
    





func getstringrange(source:String, from:Int, to:Int) -> Range<String.Index>{
    let start = source.index(source.startIndex, offsetBy:from)
    let end = source.index(source.startIndex, offsetBy:to)
    let range = start..<end
    return range

}


func mysubstr(source:String,from:Int ,to:Int) ->String {
    let range = getstringrange(source: source, from: from, to: to)
    return source.substring(with: range)
}

    
func mysubstrv2(source:String,from:Int ,to:Int) ->String {
    let cs = Array(source.characters)
    var ret = ""
    for i in from..<to{
        ret += String(cs[i])
    }
    return ret
}


    
    
    
    
    
    
    
