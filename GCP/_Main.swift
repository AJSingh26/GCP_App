//
//  SwiftUIView.swift
//  GCP
//
//  Created by urban on 2/28/21.
//

import SwiftUI

// Screen width.
public var screenWidth: CGFloat {
    return UIScreen.main.bounds.width
}

// Screen height.
public var screenHeight: CGFloat {
    return UIScreen.main.bounds.height
}

struct _Main: View {
    var body: some View {
        
        
        
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 0) {
            /*Rectangle()
                .frame(width: screenWidth, height: screenHeight/10)
                .foregroundColor(Color.black)*/
            Image("smallLogo")
                .padding(.top, screenHeight/10)
                .frame(width: screenWidth, height: screenHeight/20, alignment: .center)
            Rectangle()
                .frame(width: screenWidth, height: screenHeight/12.5)
                .foregroundColor(Color.init(hue: 0, saturation: 0, brightness: 0, opacity: 0))
            Text("Clothing")
                .font(.largeTitle)
                .padding(.top)
                .frame(width: screenWidth, height: screenHeight/3-screenHeight/20)
                .aspectRatio(contentMode: .fill)
                .foregroundColor(.white)
                .background(Color.GCP_Green)
                .scaledToFill()
            
                
            Text("Footwear")
                .font(.largeTitle)
                .aspectRatio(contentMode: .fill)
                .frame(width: screenWidth, height: screenHeight/3-screenHeight/20)
                .foregroundColor(Color.GCP_Green)
                .background(Color.white)
            Text("Accessories")
                .font(.largeTitle)
                .aspectRatio(contentMode: .fill)
                .frame(width: screenWidth, height: screenHeight/3-screenHeight/20)
                .foregroundColor(.white)
                .background(Color.GCP_Green)
        }.frame(minWidth: screenWidth,
                minHeight: screenHeight,
                alignment: .topLeading
        )
    }
}

struct _Main_Previews: PreviewProvider {
    static var previews: some View {
        _Main()
    }
}
