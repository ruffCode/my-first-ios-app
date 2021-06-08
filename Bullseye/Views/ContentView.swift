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
    private var sliderValue = 50.0

    @State
    private var game: Game = Game()

    var body: some View {
        VStack {
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS YOU CAN TO")
                    .bold()
                    .kerning(2.0)
                    .multilineTextAlignment(.center)
                    .lineSpacing(4.0)
                    .font(.footnote)

            Text(String(Int(sliderValue.rounded())))
                    .kerning(-1.0)
                    .font(.largeTitle)
                    .fontWeight(.black)

            HStack {
                Text("1").bold().font(.headline).padding()
                Slider(value: $sliderValue, in:
                0.1...100.0).accentColor(.red)
                Text("100").bold().font(.headline)
                        .padding()

            }
            Button(action: {
                self.alertIsVisible = true
            }) {
                Text("Hit me")
            }.alert(isPresented: $alertIsVisible, content: {
                let roundedSliderValue = Int(sliderValue.rounded())
                return Alert(title: Text("Hola!"), message: Text("The target was \(game.target)" +
                        "You scored \(game.points(sliderValue: roundedSliderValue)) this round"),
                        dismissButton: .default(Text("Cool beans, bro")))
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
