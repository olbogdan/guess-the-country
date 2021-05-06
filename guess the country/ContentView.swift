//
//  ContentView.swift
//  guess the country
//
//  Created by bogdanov on 06.05.21.
//

import SwiftUI

struct ContentView: View {
    private let countries = ["UK", "USA", "Bangladesh", "Germany", "Argentina", "Brazil", "Canada", "Greece", "Russia", "Sweden"].shuffled()

    private var correctAnswer = Int.random(in: 0 ... 2)

    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [.black, .white]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            VStack {
                VStack {
                    Text("Select flag:")
                    Text(countries[correctAnswer])
                        .fontWeight(.black)
                }.foregroundColor(.white)
                    .font(.largeTitle)

                ForEach(0 ..< 3) { number in
                    Button(action: {}, label: {
                        Image(self.countries[number])
                            .frame(width: 250, height: 130)
                    })
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
