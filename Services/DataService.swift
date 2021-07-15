//
//  DataService.swift
//  Module-2-Final (iOS)
//
//  Created by Tanios Dagher on 7/14/21.
//

import Foundation

class DataService {
    static func getLocalData() -> [Quote] {
        
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        
        // check if pathstring is nil
        guard pathString != nil else{
            return [Quote]()
        }
        // create URL object
        let url = URL(fileURLWithPath: pathString!)
        
        // create Data object
        do {
            let data = try Data(contentsOf: url)
            
            // decode data object with JSON decoder
            let decoder = JSONDecoder()
            
            do {
                let quote_data = try decoder.decode([Quote].self, from: data)
                
                // add the unique ids
                for item in quote_data {
                    item.id = UUID()
                }
                
                return quote_data
            }
            catch {
                print(error)
            }
        }
        catch{
            print(error)
        }
        
        // return
        return [Quote]()
    }
}
