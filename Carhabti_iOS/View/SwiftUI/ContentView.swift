//
//  ContentView.swift
//  Carhabti_iOS
//
//  Created by Apple Esprit on 13/4/2022.
//

import SwiftUI

  struct ContentView: View {
      var body: some View {
          
        ZStack{
            Color.gray.opacity(0.1)
                .edgesIgnoringSafeArea(.all)
            HomeView()
     }
   }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
