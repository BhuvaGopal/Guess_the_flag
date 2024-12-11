//
//  ContentView.swift
//  apptesting
//
//  Created by GOPAL BHUVA on 09/06/24.
//

import SwiftUI

struct ContentView: View {
    @State var countries = ["estonia", "france", "ireland", "italy", "poland", "Russia", "uk1", "us"]
    
    
    @Namespace var animation
    @State private var correctAnswer = Int.random(in: 0 ... 2 )
    @State private var score = 0
    @State private var showAlert = false
    
    var body: some View {
        NavigationView {
            ZStack{
               titleandView()
                VStack {
                        VStack {
                            ForEach(0 ... 2, id: \.self) { number in
                                Image(self.countries[number])
                                    .cornerRadius(25)
                                    .clipShape(Capsule())
                                    .matchedGeometryEffect(id: countries[number] , in: animation)
                                    .onTapGesture {
                                        withAnimation(.smooth(duration: .ulpOfOne)) {
                                            self.flagTapped(number)
                                            }
                                    }
                                   
                                    .padding(.vertical, 10)
                            }
                        }
                 
                       .navigationTitle("Guess Flag:  \(countries[correctAnswer].uppercased())")
                        .alert(isPresented: $showAlert) {
                            Alert(title: Text("Result"), message: Text("Your score is: \(score)"), dismissButton: .default(Text("Continue")) {
                                self.askQuestion()
                            })
                        }
                    }
                }

            }
        }

    func flagTapped(_ tap: Int) {
        if tap == correctAnswer {
            score += 1
        } else {
            score -= 1
        }
        showAlert = true
    }
    
    

    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0 ... 2)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

