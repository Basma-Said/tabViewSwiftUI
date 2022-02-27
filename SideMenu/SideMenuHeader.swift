//
//  SideMenuHeader.swift
//  tabView
//
//  Created by Basma Said on 22/02/2022.
//

import SwiftUI

struct SideMenuHeader: View {
    @Binding var isShowing: Bool
    var body: some View {
        ZStack(alignment: .topTrailing){

            VStack(alignment: .leading){
                HStack{
                Image("dahlia")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                    .padding(.bottom, 16)
                Text("Welcome")
                        .font(.system(size: 24, weight: .light))
                    .padding(.bottom, 10)
                    Spacer()
                }
                Text("Dalia")
                    .font(.system(size: 20, weight: .semibold))
             
            }
            .padding()
           
        }
       
    }
}

struct SideMenuHeader_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeader(isShowing: .constant(true))
    }
}
