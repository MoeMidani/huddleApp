//
//  circleQuestionView.swift
//  mobPorgrammingHuddle
//
//created by Mohamed Midani 10/3/23.

import SwiftUI

struct circleQuestionView: View {
    var question : String
    var timer : Int
    var body: some View {
        if (timer == 0) {
            ZStack{
                Circle()
                    .fill(Color.blue)
                    .frame(width:300, height: 300)
                    .overlay(Circle()
                        .stroke(Color.white, lineWidth:6)
                             )
                    .shadow(radius: 7)
                Text("Welcome to Huddle").font(.title2)
                    .fontWeight(.semibold)
                            .offset(y: -70)
                    .padding(.bottom, 10)
                Text("We created the app with the intention of bringing groups together through communication.").font(.headline.italic())
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                            .offset(y: 20)
                    .padding(.horizontal, 69.0)
            }
        }else{
            ZStack{
                Circle()
                    .fill(Color.blue)
                    .frame(width:300, height: 300)
                    .overlay(Circle()
                        .stroke(Color.white, lineWidth:6)
                    )
                    .shadow(radius: 7)
                Text("Question").font(.title2)
                    .fontWeight(.semibold)
                    .offset(y: -70)
                    .padding(.bottom, 10)
                Text(question).font(.headline.italic())
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                    .offset(y: 20)
                    .padding(.horizontal, 69.0)
//                Text(String(timer))
            }
        }
    }
}

#Preview {
    circleQuestionView(question: "HI", timer: 0)
}
