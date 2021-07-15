//
//  Quote.swift
//  Module-2-Final (iOS)
//
//  Created by Tanios Dagher on 7/14/21.
//

import Foundation

class Quote: Identifiable, Decodable {
    var id:UUID?
    var quote:String
    var author:String
    var image:String
    var description:String
}
