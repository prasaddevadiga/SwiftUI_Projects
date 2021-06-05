//
//  CheckoutView.swift
//  MenuList
//
//  Created by Prasad on 6/5/21.
//

import SwiftUI

struct CheckoutView: View {
    @EnvironmentObject var order: Order
    let paymentTypes = ["Cash", "Credit Card", "iDine Points"]
    let tipAmounts = [10, 15, 20, 25, 0]
    @State private var paymentType = "Cash"
    @State private var addLoyaltyDetails = false
    @State private var loyaltyNumber = ""
    @State private var tipAmount = 15
    @State private var showingPaymentAlert = false
    
    var totalPrice: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        
        let total = Double(order.total)
        let tipValue = total/100 * Double(tipAmount)
        return formatter.string(from: NSNumber(value: total + tipValue)) ?? "$0"
    }
    
    var body: some View {
        Form {
            Section {
                Picker("Select your payment type", selection: $paymentType) {
                    ForEach(paymentTypes, id: \.self) {
                        Text($0)
                    }
                }
                Toggle("Add iDine loyalty card", isOn:$addLoyaltyDetails.animation())
                if addLoyaltyDetails {
                    TextField("Enter your iDine id", text: $loyaltyNumber)
                }
            }
            
            Section(header: Text("Add a tip")) {
                Picker("Percentage", selection: $tipAmount) {
                    ForEach(tipAmounts, id: \.self) {
                        Text("\($0)%")
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            
            Section(header:
                        Text("Total \(totalPrice)")
                        .font(.title)
                        .fontWeight(.bold)) {
                Button("Confirm order") {
                    showingPaymentAlert.toggle()
                }
            }
        }
        .navigationTitle("Payment")
        .navigationBarTitleDisplayMode(.inline)
        .alert(isPresented: $showingPaymentAlert) {
            
            return Alert(title: Text("Order confirmed"),
                         message: Text("Your total was \(totalPrice) – thank you!"),
                         dismissButton: .default(Text("OK")) {
                            order.items.removeAll()
                         })
            
        }
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        CheckoutView()
            .environmentObject(Order())
        }
    }
}
