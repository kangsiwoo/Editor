//
//  Item.swift
//  dataHandling
//
//  Created by 강시우 on 10/5/24.
//

import Foundation
import SwiftData

@Model
final class FileContent: Identifiable {
    var id:     UUID
    var name:   String
    var isFile: Bool
    var children: [FileContent]?
    
    init(id: UUID = .init(), name: String, isFile: Bool, children: [FileContent]?) {
        self.id     = id
        self.name   = name
        self.isFile = isFile
        self.children = children ?? nil
    }
}
