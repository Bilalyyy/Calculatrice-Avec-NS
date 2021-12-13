//
//  ContentView.swift
//  Calculatrice Avec NS
//
//  Created by bilal on 13/12/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var calculAffToScreen : String = ""
    @State var result : Int = 0


    var body: some View {
        
        VStack{
            
            Text(String(result))
                .font(.system(size: 65))
                .bold()
                .frame(height: 75, alignment: .trailing)
                .padding()
            Text(calculAffToScreen)
                .font(.system(size: 25))
            
            HStack  {
                MyButton(btnValue: "1", calculAffToScreen: $calculAffToScreen, result: $result)
                MyButton(btnValue: "2", calculAffToScreen: $calculAffToScreen, result: $result)
                MyButton(btnValue: "3", calculAffToScreen: $calculAffToScreen, result: $result)
                MyButton(btnValue: "+", colorBck: .orange, calculAffToScreen: $calculAffToScreen, result: $result)
            }
            HStack  {
                
                MyButton(btnValue: "4", calculAffToScreen: $calculAffToScreen, result: $result)
                MyButton(btnValue: "5", calculAffToScreen: $calculAffToScreen, result: $result)
                MyButton(btnValue: "6", calculAffToScreen: $calculAffToScreen, result: $result)
                MyButton(btnValue: "-", colorBck: .orange, calculAffToScreen: $calculAffToScreen, result: $result)
            }
            HStack  {
                MyButton(btnValue: "7", calculAffToScreen: $calculAffToScreen, result: $result)
                MyButton(btnValue: "8", calculAffToScreen: $calculAffToScreen, result: $result)
                MyButton(btnValue: "9", calculAffToScreen: $calculAffToScreen, result: $result)
                MyButton(btnValue: "=", colorBck: .orange, calculAffToScreen: $calculAffToScreen, result: $result)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
