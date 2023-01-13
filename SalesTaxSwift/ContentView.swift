//
//  ContentView.swift
//  SalesTaxSwift
//
//  Created by Billy  Ramundo on 1/6/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var beforeTaxPrice = ""
    @State var salesTax = ""
    @State var afterTaxPrice = ""
    
    var body: some View {
        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
            Text("Sales Tax Calculator")
                .font(.largeTitle)
                .foregroundColor(Color.blue)
            HStack{
                Text("Before Tax Price")
                TextField("$0", text: $beforeTaxPrice)
                    .keyboardType(/*@START_MENU_TOKEN@*/.decimalPad/*@END_MENU_TOKEN@*/)
            }
            .padding(.top, 40.0)
            HStack{
                Text("Sales Tax Rate")
                TextField("0%", text: $salesTax)
                    .keyboardType(/*@START_MENU_TOKEN@*/.decimalPad/*@END_MENU_TOKEN@*/)
            }
            .padding(.top, 20.0)
            HStack{
                Text("After Tax Price")
                TextField("$0", text: $afterTaxPrice)
                    .disabled(true)
            }
            .padding(.top, 20.0)
            
            Button("Calculate NOW!!"){
                if let beforeTax = Float(beforeTaxPrice),
                   let tax = Float(salesTax){
                    afterTaxPrice = String(beforeTax * (1 + tax * 0.01))
                }
            }
            .padding(.top, 40)
            Spacer()
        }
        .padding([.top, .leading])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
