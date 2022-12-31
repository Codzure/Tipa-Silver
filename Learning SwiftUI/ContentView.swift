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
        NavigationView{
            Form{
                Section{
                    
                    TextField("Amount", value: $checkAmount,format: .currency(code: Locale.current.currency?.identifier ?? "KES")
                    )
                    .keyboardType(.decimalPad)
                    
                    Picker("Number of People", selection: $numberOfPeople) {
                        ForEach(0..<100) { numberOfPeople in
                            Text("\(numberOfPeople) people")
                        }
                    }
                    
                    
                }header: {
                    Text("How much do you want to pay?")
                    
                }
                
                Section{
                   
                    Picker("Tip Percentage", selection: $tipPercent){
                        ForEach(tipPercentages, id: \.self){
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.segmented)
                } header: {
                    Text("How much tip do you want to leave?")
                }
                
                Section{
                    Text(checkAmount,format: .currency(code: Locale.current.currency?.identifier ?? "KES"))
                }
            }
            .navigationTitle("Tippa Silver")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
