//
//  Utils.swift
//  Tests iOS
//
//  Created by Esaikiappan Udayakumar on 27/07/21.
//

import Foundation

class Utils {
    
   
   public static let timeInterval: UInt32 = 2
    
    public static func getSubString(stringToSubstring: String, strToFetch: String) -> String{
        let strArray = stringToSubstring.split(separator: ",")
        var result = ""
        for element in strArray {
            if !element.contains(strToFetch){
                result = String(element)
            }
        }
        return result
    }
    
    
    
    public static func wait(secs: UInt32){
        sleep(secs)
    }
}
