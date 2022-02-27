//
//  SearchTab.swift
//  tabView
//
//  Created by Basma Said on 20/02/2022.
//

import SwiftUI

struct SearchTab: View {
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(.yellow)
            Text("Search")
                .font(.body)
                .fontWeight(.heavy)
                .foregroundColor(Color.black)
                .lineLimit(nil)
                
        }
        
    }
}

struct SearchTab_Previews: PreviewProvider {
    static var previews: some View {
        SearchTab()
    }
}
