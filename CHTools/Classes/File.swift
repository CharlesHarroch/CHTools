//
//  File.swift
//  Pods
//
//  Created by Charles HARROCH on 02/06/2016.
//
//

import Foundation

public class FileHelper {
    
    public static func fileToDictionary(filename : String, type : String) -> Dictionary<String,AnyObject>? {
        
        if let path = NSBundle.mainBundle().pathForResource(filename, ofType: type), dict = NSDictionary(contentsOfFile: path) as? [String: AnyObject] {
            return dict
        }
        return nil
    }
    
}