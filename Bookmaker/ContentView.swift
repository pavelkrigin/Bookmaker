//
//  ContentView.swift
//  Bookmaker
//
//  Created by Pavel Krigin on 02.02.2024.
//

import SwiftUI

struct ContentView: View {
    
    let winRate: CGFloat = 0.5
    let lossRate: CGFloat = 2.17
    let returnRate: CGFloat = 0.16
    
    var body: some View {
        VStack {
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Средние коэффициенты")
                    .font(.headline)
                
                HStack {
                    
                    Text("Выигрыш")
                        .foregroundColor(.gray)
                    Spacer()
                    Text("1.94")
                        .bold()
                }
                ProgressView(value: winRate, total: 1.0)
                    .progressViewStyle(LinearProgressViewStyle(tint: .green))
                
                HStack {
                    
                    Text("Проигрыш")
                        .foregroundColor(.gray)
                    Spacer()
                    Text("2.17")
                        .bold()
                }
                ProgressView(value: lossRate, total: 3.0)
                    .progressViewStyle(LinearProgressViewStyle(tint: .red))
                
                HStack {
                    
                    Text("Возврат")
                        .foregroundColor(.gray)
                    Spacer()
                    Text("1.26")
                        .bold()
                }
                ProgressView(value: returnRate, total: 1.0)
                    .progressViewStyle(LinearProgressViewStyle(tint: .gray))
            }
            .padding()
            .background(Color.white)
            .cornerRadius(8)
            .shadow(radius: 4)
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Выигрыши/проигрыши по букмекерам")
                    .font(.headline)
                
                HStack {
                    Image("imageB")
                    Text("32 ставки")
                }
                
                VStack {
                    HStack{
                        Rectangle()
                            .foregroundColor(.green)
                            .frame(width: 150)
                            .frame(height: 5)
                        Rectangle()
                            .foregroundColor(.red)
                        
                            .frame(width: 100)
                            .frame(height: 5)
                        Rectangle()
                            .foregroundColor(.gray)
                        
                            .frame(width: 59)
                            .frame(height: 5)
                    }
                    HStack {
                        Text("16 (50%)")
                        
                        Spacer(minLength: 100
                        )
                        Text("11 (34%)")
                        
                        Spacer()
                        Text("5 (16%)")
                    }
                }
                
                
                
            }
            .padding()
            .background(Color.white)
            .cornerRadius(8)
            .shadow(radius: 4)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



