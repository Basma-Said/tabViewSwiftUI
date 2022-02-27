//
//  HomeTab.swift
//  tabView
//
//  Created by Basma Said on 20/02/2022.
//

import SwiftUI

struct HomeTab: View {
    @State private var isShowing = false
    var body: some View {
        NavigationView{
            ZStack{
                if isShowing{
                    SideMenuView(isShowing: $isShowing)
                        .navigationBarTitleDisplayMode(.inline)
                       
                       // .ignoresSafeArea()
                       
                }
                HomeView()
                    .onTapGesture {
                        withAnimation(.easeIn(duration:0.5)){
                        isShowing.toggle()
                        }
                    }

                        
                 
        
                    //.cornerRadius(isShowing ? 20 : 10)
                    //.offset(CGSize(width:40, height: 0))
                   .offset(x: isShowing ? 200 : 0)
                    //.scaleEffect(isShowing ? 0.8 : 1)
                    .navigationTitle("List")
                    .navigationBarTitleDisplayMode(.inline)
                   .ignoresSafeArea()
                    .toolbar{
                        ToolbarItemGroup(placement: .navigationBarLeading){
                            
                            Button {
                                withAnimation(.easeOut(duration: 0.7)){
                               // withAnimation(.easeIn(duration: 0.7))
                                
                                    isShowing.toggle()
                                }
                                
                                print("presssed")
                            }label: {
                                Image(systemName: "list.bullet")
                            }
                        }
                        
                    }
            }
           
        }
    }
}

struct HomeTab_Previews: PreviewProvider {
    static var previews: some View {
        HomeTab()
    }
}

struct HomeView: View {
    var body: some View {
        ZStack{
            Color(.white)
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(.green)
            Text("Home")
                .font(.body)
                .fontWeight(.heavy)
                .foregroundColor(Color.black)
                .lineLimit(nil)
            
        }
        
       
    }
}
