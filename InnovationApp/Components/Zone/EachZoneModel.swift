//
//  EachZoneModel.swift
//  Knektu
//
//  Created by Helia on 10/11/23.
//

import Foundation
import SwiftUI

struct EachZoneModel: Identifiable {
    let id: UUID
    let title: String
    let image: String
    var destination:any View
}
