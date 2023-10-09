//
//  FileManager-DocumentsDirectory.swift
//  BucketList
//
//  Created by Andy C on 10/9/23.
//

import Foundation

extension FileManager {
    static var documentDirectory: URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}
