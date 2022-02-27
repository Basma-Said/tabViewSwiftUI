//
//  SideMenuList.swift
//  tabView
//
//  Created by Basma Said on 22/02/2022.
//

import SwiftUI

struct SideMenuList: View {
    let itemsTitle = ["Profile", "Location", "Privacy Policy"]
    let itemsImage = ["person","location","doc.text"]
    var body: some View {
        
        VStack{
            
            ForEach(0..<3){ item in
                HStack(spacing: 15){
                    
                    Image(systemName: itemsImage[item])
                        .frame(width: 28, height: 28)
                    Text(itemsTitle[item])
                        .font(.system(size: 20))
                    Spacer()
                }
            }
        }
        Spacer()
    }
}


struct SideMenuList_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuList()
    }
}
