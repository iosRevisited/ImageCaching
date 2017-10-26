//
//  SSCache.swift
//  ImageCaching
//
//  Created by SaiSandeep on 26/10/17.
//  Copyright © 2017 iOSRevisited. All rights reserved.
//

import UIKit

class SSCache: NSObject {
    
    static let sharedInstance = SSCache()
    
    func saveImage(image: UIImage, Key: String) {
        if let data = UIImagePNGRepresentation(image) {
            let filename = getDocumentsDirectory().appendingPathComponent("\(Key).png")
            print(filename)
            try? data.write(to: filename)
        }
    }
    
    func getImage(Key: String) -> UIImage?{
        let fileManager = FileManager.default
        let filename = getDocumentsDirectory().appendingPathComponent("\(Key).png")
        if fileManager.fileExists(atPath: filename.path) {
            return UIImage(contentsOfFile: filename.path)
        }
        return nil
    }
    
    private func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}



