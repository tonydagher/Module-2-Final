//
//  QuoteModel.swift
//  Module-2-Final (iOS)
//
//  Created by Tanios Dagher on 7/14/21.
//

import Foundation

class QuoteModel: ObservableObject {
    @Published var quotes = [Quote]()
    
    init() {
        self.quotes = DataService.getLocalData()
    }
}
