//
//  ContentView.swift
//  Hydrate
//
//  Created by Renad Alqarni on 13/02/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var weightInput = ""
    var body: some View {
        VStack {
            Image("Drop")
                .resizable()
                .frame(width: 120, height: 100)
                .padding(.trailing,90)
            Text("iHydrate")
                .font(.largeTitle)
                .bold()
        }
        .padding(.trailing,170)
        VStack {
            Text("Start with Hydrate to record and track your water intake daily based on your needs and stay hydrated")
                .padding(.leading,30)
                .font(.title3)
                .foregroundColor(.gray)
            
            
            RoundedRectangle(cornerRadius: 5)
                .fill(Color.gray.opacity(0.2))
                .overlay(
                    HStack {
                        Text("Body weight")
                            .multilineTextAlignment(.trailing)
                            .padding()
                        TextField("weight", text: $weightInput)
                        Text("Kg")
                            .multilineTextAlignment(.trailing)
                            .padding()
                    }
                )
                .frame(height: 30)
                .padding()
          
            Button(action: {
                //calculations
            }) {
                Text("Calculate Now")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color(.calcButton))
                    .cornerRadius(10)
                
            }
        }
    
  
        
    }
}

#Preview {
    ContentView()
}
