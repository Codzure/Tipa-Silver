//
//  ContentView.swift
//  Learning SwiftUI
//
//  Created by Leonard Mutugi on 30/12/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercent = 20
    
    let tipPercentages = [10, 20, 30, 40, 50, 0]

    var body: some View {
        Form{
            Section{
                TextField(
                    "Amount",
                    value: $checkAmount,
                    format: .currency(code: Locale.current.currency?.identifier ?? "KES")
                )
                .keyboardType(.decimalPad)
            }
            
            Section{
                Text(
                    checkAmount,
                    format: .currency(code: Locale.current.currency?.identifier ?? "KES"))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
