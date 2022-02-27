//
//  SideMenuView.swift
//  tabView
//
//  Created by Basma Said on 22/02/2022.


import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing: Bool
    var body: some View {
        ZStack{
            LinearGradient(colors: [.blue, .white], startPoint: .top, endPoint: .bottom)
            //to fill all the screen area
                .ignoresSafeArea()
            VStack(spacing: 20){
                //Header
                SideMenuHeader(isShowing: $isShowing)
                    .foregroundColor(.white)
                //List
                SideMenuList()
                .foregroundColor(.white)
                Spacer()
               
            }
        }
        .navigationBarHidden(true)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowing: .constant(true))
    }
}

