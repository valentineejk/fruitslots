//
//  ContentView.swift
//  fruitslots
//
//  Created by Valentineejk on 12/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var apples = "1slot"
    @State private var berries = "2slot"
    @State private var stars = "3slot"
    @State private var credits = 1000


    
    var body: some View {
        VStack{
            Text("SwiftUI Slots!")
                .font(.largeTitle)
            Spacer()
            
            Text("Credits: \(credits)")
                .font(.subheadline)
                
            
            Spacer()

            HStack{
                Image(apples)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 200)
                Image(berries)
                    .resizable()
                    .aspectRatio(contentMode: .fit)

                    .frame(width: 100, height: 200)
                Image(stars)
                    .resizable()
                    .aspectRatio(contentMode: .fit)

                    .frame(width: 100, height: 200)
            }
            
            Spacer()
            
            Button {
                
                //random
                let appleR = Int.random(in: 1...3)
                let berryR = Int.random(in: 1...3)
                let sterR = Int.random(in: 1...3)
                
                //update
                apples = "\(appleR)slot"
                berries = "\(berryR)slot"
                stars = "\(sterR)slot"

                if apples == "1slot", (berries == "1slot" && stars == "1slot" ){
                    credits += 50
                } else if apples == "2slot", (berries == "2slot" && stars == "2slot" ) {
                    credits += 50

                }
                
                else if apples == "3slot", (berries == "3slot" && stars == "3slot" ) {
                   credits += 50

               }
                                
                else if credits > 0 {
                    credits -= 50
                }
                
            } label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 120, height: 50, alignment: .center)
                        .foregroundColor(.red)
                    Text("Spin")
                        .foregroundColor(.white)
                }
            }
Spacer()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
