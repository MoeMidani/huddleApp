//
//  questions.swift
//  mobPorgrammingHuddle
//
//created by Mohamed Midani 10/3/23.


import Foundation
let socialQuestion = [
    "What’s the best piece of advice you’ve ever been given?",
    "What do you want to be remembered for?",
    "If you could have any superpower for a day, what would it be and why?",
    "What's the most interesting place you've ever visited, and what made it special?",
    "If you could travel back in time to any era, where and when would you go?",
    "What's your all-time favorite movie and why?",
    "If you could switch lives with someone for a day, who would it be and why?",
    "What's the most adventurous thing you've ever done?",
    "If you could only eat one cuisine for the rest of your life, what would it be?",
    "If you were stranded on a desert island, what three items would you want with you?",
    "What's a skill or hobby you've always wanted to learn but haven't had the chance to yet?",
    "What's the best piece of advice you've ever received, and how has it impacted your life?",
    "Sneakers or dress shoes?",
    "What is your favorite part of your home city?",
    "What was your favorite Halloween costume as a child?",
    "What was the worst job you ever had?",
    "What is your drink of choice?",
    "What is your Starbucks order?",
    "Teleportation or flying? Why?",
    "What is your favorite childhood memory?",
    "What's your favorite childhood game or toy?",
    "What's your go-to comfort food?",
    "If you could meet any historical figure, who would it be?",
    "What's the best concert you've ever attended?",
    "Name a book that had a big impact on you.",
    "Describe your dream vacation destination.",
    "What's your favorite season of the year and why?",
    "Share a recent accomplishment you're proud of.",
    "If you could have any job for a day, what would it be?",
    "What's the most interesting fact you know?"
]

let workQuestion = [
    "Would you rather be slightly late or super early?",
    "What’s our biggest challenge as a team?",
    "What are the biggest blockers affecting our performance",
    "When is the best time to give feedback on your work?",
    "What can we identify is our bottleneck on production output",
    "What's the best piece of career advice you've ever received, and how has it helped you?",
    "What's the most interesting project you've worked on recently, and why did it captivate your interest?",
    "Share a memorable work-related achievement or milestone you're proud of.",
    "Describe a work-related challenge you faced and how you overcame it.",
    "If you had to switch roles with a coworker for a day, who would it be, and what do you think you'd learn from the experience?",
    "What's the most unusual or unexpected skill or hobby you have that your colleagues might not know about?",
    "If you could implement one change or improvement in your workplace, what would it be, and why?",
    "What's your favorite way to unwind or de-stress after a busy workday?",
    "What's your go-to coffee order at the office?",
    "If you could have any office perk, what would it be?",
    "Share a quick office productivity tip you swear by.",
    "What's your favorite type of office snack?",
    "If you could choose your work hours, what would they be?",
    "What's the most interesting thing on your desk right now?",
    "If you could create a new job title for yourself, what would it be?",
    "If you could invite any historical figure to be a guest speaker at your company, who would it be?",
    "What's the most interesting skill you've learned through your work?",
    "If you were to organize a themed office party, what would the theme be?",
    "If you could have a one-on-one mentorship with any living business leader, who would you choose and why?",
    "If you could interview any fictional character for a job position, who would it be, and what role would you consider them for?",
    "If you could interview any fictional character for a job position, who would it be, and what role would you consider them for?",
    "If you could time-travel and learn from any legendary entrepreneur from the past, who would you visit, and what aspect of business would you want to learn from them?",
    "If you could form an advisory board of historical figures to guide your company's strategy, who would be on that board, and what insights do you think they'd provide?",
    "If you could host a panel discussion with three historical figures, who would they be, and what topic would you want them to discuss?",
    "If you could have a brainstorming session with any famous artist, writer, or creative thinker, who would you choose, and what creative project would you collaborate on?",
    "If you could incorporate the wisdom of a renowned philosopher into your workplace culture, whose philosophies would you adopt, and why?",
    "If you could have a roundtable discussion with three historical figures known for their leadership qualities, who would they be, and what leadership lessons would you hope to gain from them?",
    "What skills or certifications are you working on to advance your career?",
    "What is one key performance indicator (KPI) that you're determined to improve in your current role?",
    "How do you plan to contribute to the company's overall strategic goals in the upcoming months?",
    "What new technologies or tools do you think could help improve efficiency and productivity in your department?",
    "How do you plan to balance short-term objectives with long-term career aspirations?",
    "In what ways can the team collaborate more effectively to achieve collective goals?",
    "Are there any meetings or appointments I need to prepare for or attend today?"
]

//
//  ContentView.swift
//  mobPorgrammingHuddle
//
//  Created by Maritza Price on 10/2/23.
//
//
//import SwiftUI
//
//struct ContentView: View {
////    @State private var showingPopover = false
//    @State private var showText = true
//    @State private var socialMode = 1
//    @State private var workMode = 1
//    @State private var selectedTime = 1
//    @State private var generatedQuestion = ""
//    @EnvironmentObject var userData: UserData
//
//    
////    @State private var socialMode = ""
////    @State private var workMode = ""
////    private func generateSocialQuestion() {
////        socialMode = socialQuestion.randomElement() ?? ""
////    }
////    private func generateWorkQuestion() {
////        workMode = workQuestion.randomElement() ?? ""
////    }
//var body: some View {
//    Image("Huddle")
//    Spacer()
//    ZStack {
//        circleQuestionView(question: userData.question, timer: userData.times)
//        
//       
//        VStack {
//            Spacer()
//            HStack{
//                Spacer()
//                Button ("Customize Huddle") {
//                    userData.showingPopover = true
//                    showText = true
//                }
//                Spacer()
//                }
//            }
//            .padding(.vertical)
//            .padding()
//        }
//    .sheet(isPresented: $userData.showingPopover) {
//                   ContentViewSheet(socialMode: $socialMode, workMode: $workMode, selectedTime: $selectedTime, socialQuestion: socialQuestion, workQuestion: workQuestion, generatedQuestion: $generatedQuestion)
//        }
//    }
//}
//struct ContentViewSheet: View {
//    @State private var showText = true
//    @Binding var socialMode: Int
//    @Binding var workMode: Int
//    @Binding var selectedTime: Int
//    @Binding var generatedQuestion: String
//    let socialQuestion: [String]
//    let workQuestion: [String]
//    @EnvironmentObject var userData: UserData
//
//    init(socialMode: Binding<Int>, workMode: Binding<Int>, selectedTime: Binding<Int>, socialQuestion: [String], workQuestion: [String], generatedQuestion: Binding<String>) {
//        self._socialMode = socialMode
//        self._workMode = workMode
//        self._selectedTime = selectedTime
//        self.socialQuestion = socialQuestion
//        self.workQuestion = workQuestion
//        self._generatedQuestion = generatedQuestion
//    }
//
//    
//    
//    var body: some View {
//            Text("How will you huddle today?")
//            Picker(
//                selection: $socialMode,
//                label: Text("Mode"),
//                content: {
//                    Text("Work").tag(1)
//                    Text("Social").tag(2)
//                })
//            
//            Picker(
//                selection: $selectedTime,
//                label: Text("Time"),
//                content: {
//                    Text("3 Minutes").tag(3)
//                    Text("15 Minutes").tag(15)
//                    Text("30 Minutes").tag(30)
//                })
//            
//            Button("Start Huddle") {
////                showText = false
//                userData.question = generateQuestion()
//                userData.times = selectedTime
//                userData.showingPopover=false
//            }
////
////            if !generatedQuestion.isEmpty {
////                Text("Question:")
////                Text(generatedQuestion)
////                                }
//        
//        
//    }
//        private func generateQuestion() -> String {
//            if socialMode == 2 {
//                return socialQuestion.randomElement() ?? ""
//            } else {
//                return workQuestion.randomElement() ?? ""
//            }
//        }
//    }
//
//#Preview {
//    ContentView()
//        .environmentObject(UserData())
//}
//
