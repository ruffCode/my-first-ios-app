//
//  ContentView.swift
//  Bullseye
//
//  Created by Alexi Bre on 6/7/21.
//

import SwiftUI


struct ContentView: View {


    @State
    private var alertIsVisible = false

    @State
    private var jokeButtonVisible = false

    var body: some View {
        VStack {
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS YOU CAN TO")
                    .bold()
                    .kerning(2.0)
                    .multilineTextAlignment(.center)
                    .lineSpacing(4.0)
                    .font(.footnote)

            Text("89")
                    .kerning(-1.0)
                    .font(.largeTitle)
                    .fontWeight(.black)

            HStack {
                Text("1").bold().font(.headline).padding()
                Slider(value: .constant(50.0), in:
                0.1...100.0).accentColor(.red)
                Text("100").bold().font(.headline)
                        .padding()

            }
            Button(action: {
                self.alertIsVisible = true
            }) {
                Text("Hit me")
            }.alert(isPresented: $alertIsVisible, content: {
                Alert(title: Text("Hola!"), message: Text("You're been alerted!"),
                        dismissButton: .default(Text("Cool beans, bro")))
            })

            Button(action: {
                jokeButtonVisible = true
            }) {
                Text("Knock Knock")
            }.alert(isPresented: $jokeButtonVisible, content: {
                Alert(title: Text("Who's there?"), message: Text("Impatient cow"),
                        dismissButton: .default(Text("Moo!")))
            })
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
        }
        ContentView()
                .previewLayout(.fixed(width: 658, height: 320))
    }
}
