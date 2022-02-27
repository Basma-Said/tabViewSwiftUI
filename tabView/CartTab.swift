//
//  CartTab.swift
//  tabView
//
//  Created by Basma Said on 20/02/2022.
//

import SwiftUI

struct CartTab: View {
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(.red)
            Text("Cart")
                .font(.body)
                .fontWeight(.heavy)
                .foregroundColor(Color.black)
                .lineLimit(nil)
                
        }
      
    }
}

struct CartTab_Previews: PreviewProvider {
    static var previews: some View {
        CartTab()
    }
}
