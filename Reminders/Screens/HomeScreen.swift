//
//  HomeScreen.swift
//  Reminders
//
//  Created by Bikram Aryal on 12/05/2022.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView {
            
          SideBarView()
            
            
            Text("MyLIstItems")
            
          
        
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
