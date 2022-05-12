//
//  MyListItemsView.swift
//  Reminders
//
//  Created by Bikram Aryal on 12/05/2022.
//

import SwiftUI

struct MyListItemsView: View {
    var body: some View {
        VStack(alignment: .leading) {
            List(1...10, id: \.self) {index in
                Text("Item \(index)")
            }
        }
    }
}

struct MyListItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MyListItemsView()
    }
}
