//
//  ContentView.swift
//  Avskrivninger
//
//  Created by Eirik Østensvik on 26/10/2022.
//

import SwiftUI

struct ContentView: View {
    @State var prisPerGang:Int = 0
    @State private var antallGanger:String = "1"
    @State private var prisen:String = "1"
    var body: some View {
        VStack {
            //Spacer()
                Image("fenix7")
                .resizable()
                .scaledToFit()
             Spacer()
                Image(systemName: "dollarsign.circle")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
            TextField("Hvor mye kostet den", text: $prisen)
            TextField("Hvor mange ganger har du løpt", text:  $antallGanger)
             //   .font(.)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                .disableAutocorrection(true)
            Button("Calculate"){
                prisPerGang = (Int(prisen) ?? 1)/(Int(antallGanger) ?? 1)
                
            }
            Text("\(prisPerGang)")
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
