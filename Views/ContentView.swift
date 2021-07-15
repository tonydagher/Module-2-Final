//
//  ContentView.swift
//  Shared
//
//  Created by Tanios Dagher on 7/14/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var quote_list = QuoteModel()
    
    var body: some View {
        NavigationView{
            List(quote_list.quotes) { r in
                NavigationLink(destination: QuoteView(quote: r), label: {
                    ZStack {
                        Image(r.image)
                            .resizable()
                            .scaledToFit()
                        
                        VStack(alignment: .leading) {
                            Text(r.quote)
                                .font(.largeTitle)
                                .foregroundColor(Color.white)
                            Text("- " + r.author)
                        }
                    }
                })
                
            }.navigationBarTitle("Quotes")
        }
    }
}
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
