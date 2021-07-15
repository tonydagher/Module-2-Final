//
//  QuoteView.swift
//  Module-2-Final (iOS)
//
//  Created by Tanios Dagher on 7/14/21.
//

import SwiftUI

struct QuoteView: View {
    var quote:Quote
    
    var body: some View {
        NavigationView {
            ScrollView{

                Text(quote.description).navigationBarTitle(quote.author)


            }
        }

    }
}

struct QuoteView_Previews: PreviewProvider {
    static var previews: some View {
        
        // creating a dummy to pass in
        
        let model = QuoteModel()
        
        QuoteView(quote: model.quotes[0])
    }
}
