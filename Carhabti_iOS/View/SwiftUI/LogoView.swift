//
//  LogoView.swift
//  Carhabti_iOS
//
//  Created by Apple Esprit on 13/4/2022.
//

import SwiftUI

//Rotation Animation
struct LogoView : View {
    
    @State var rotate = false
    
    var body : some View{
        ZStack{
        //Rotate Layer
        Image("carhabti") // Outer image
            .resizable()
            .frame(width : 200 , height: 200)
            .shadow(color: .gray, radius: 5, x: 0.0, y: 0.0)
            .rotationEffect(.degrees(rotate ? -360 : 0))
            .animation(Animation.easeInOut(duration: 5).repeatForever(autoreverses: false))
            .onAppear() {
            self.rotate.toggle()
                }
            }
    }
    
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
    }
}
