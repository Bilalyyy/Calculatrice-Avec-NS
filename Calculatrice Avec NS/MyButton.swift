//
//  Button.swift
//  Calculatrice Avec NS
//
//  Created by bilal on 13/12/2021.
//

import SwiftUI

struct MyButton: View {
    
    var btnValue : String
    var colorBck : Color = .gray
    
    @Binding var calculAffToScreen : String
    @Binding var result : Int
    
    var body: some View {
        Button {
            
            changeOperator(btnValue)
            
            if btnValue == "=" {
                let expression = NSExpression(format: calculAffToScreen)
                if let sExpression = expression.expressionValue(with: nil, context: nil) as? Int {
                    result = sExpression
                    
                }
            } else {
                calculAffToScreen += btnValue
                
            }
            
        } label: {
            ZStack{
                Circle()
                    .foregroundColor(colorBck)
                    .frame(width: 50, height: 50, alignment: .center)
                Text(btnValue)
                    .foregroundColor(.white)
                    .font(.system(size: 45))
                    .bold()
            }
        }
    }
    
    
    func changeOperator(_ currentOperateur: String) {
        switch btnValue {
        case "+", "-":
            for operateur in ["+","-"] {
                if calculAffToScreen.hasSuffix(operateur){
                    calculAffToScreen.removeLast()
                }
            }
        default:
            break
        }
    }
}
