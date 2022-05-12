//
//  MyListItemHeaderView.swift
//  Reminders
//
//  Created by Bikram Aryal on 12/05/2022.
//

import SwiftUI

struct MyListItemHeaderView: View {
    
    let name: String
    let count: Int
    let color: Color
    
    var body: some View {
        HStack {
            Text(name)
                .font(.system(size: 28))
                .fontWeight(.bold)
                .foregroundColor(color)
                .padding()
            
            
            Spacer()
            Text("\(count)")
                .font(.system(size: 32))
                .foregroundColor(color)
                .padding()
        }
    }
}

struct MyListItemHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        MyListItemHeaderView(name: "Groceries", count: 6, color: Color.blue)
    }
}
