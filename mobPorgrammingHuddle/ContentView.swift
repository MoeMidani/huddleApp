//
//  ContentView.swift
//  mobPorgrammingHuddle
//
//  Created by Maritza Price on 10/2/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showText = true
    @State private var socialMode = 1
    @State private var workMode = 1
    @State private var selectedTime = 1
    @State private var generatedQuestion = ""
    @State var question: String = ""
    @State var times: Int = 0
    @State var showingPopover: Bool = false
    func generateQuestion() -> String {
        if socialMode == 2 {
            return socialQuestion.randomElement() ?? ""
        } else {
            return workQuestion.randomElement() ?? ""
        }
    }
    
    var body: some View {
        Image("Huddle")
        Spacer()
        ZStack {
            circleQuestionView(question: question, timer: times)
            
            
            VStack {
                Spacer()
                if(question == ""){}else{
                    Button ("Next") {
                        question = generateQuestion()
                        times = selectedTime
                    }.padding()}
                HStack{
                    Spacer()
                    
                    Button ("Customize Huddle") {
                        showingPopover = true
                        showText = true
                    }
                    Spacer()
                }
            }
            .padding(.vertical)
            .padding()
        }
        .sheet(isPresented: $showingPopover){}
    content: {
        Text("How will you huddle today?")
        Picker(
            selection: $socialMode,
            label: Text("Mode"),
            content: {
                Text("Work").tag(1)
                Text("Social").tag(2)
            })
        
        Picker(
            selection: $selectedTime,
            label: Text("Time"),
            content: {
                Text("3 Minutes").tag(3)
                Text("15 Minutes").tag(15)
                Text("30 Minutes").tag(30)
            })
        
        Button("Start Huddle") {
            //                showText = false
            question = generateQuestion()
            times = selectedTime
            showingPopover=false
        }
    }
        
    }
}
#Preview {
    ContentView()
}

