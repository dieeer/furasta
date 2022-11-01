//
//  RecipeStoryView.swift
//  furasta
//
//  Created by justin on 01/11/2022.
//

import SwiftUI
import Combine

struct RecipeStoryView: View {
    
    var imageNames:[String] = ["image01","image02","image03","image04","image05","image06","image07"]

    @ObservedObject var storyTimer: StoryTimer = StoryTimer(items: 7, interval: 3.0)

    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .top) {
                Image(self.imageNames[Int(self.storyTimer.progress)])
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .scaledToFill()
                    .frame(width: geometry.size.width, height: nil, alignment: .center)
                    .animation(.none)
                HStack(alignment: .center, spacing: 4) {
                    ForEach(self.imageNames.indices) { x in
                        LoadingRectangle(progress: min( max( (CGFloat(self.storyTimer.progress) - CGFloat(x)), 0.0) , 1.0) )
                            .frame(width: nil, height: 2, alignment: .leading)
                            .animation(.linear)
                    }
                }.padding()
                HStack(alignment: .center, spacing: 0) {
                    Rectangle()
                        .foregroundColor(.clear)
                        .contentShape(Rectangle())
                        .onTapGesture {
                            self.storyTimer.advance(by: -1)
                    }
                    Rectangle()
                        .foregroundColor(.clear)
                        .contentShape(Rectangle())
                        .onTapGesture {
                            self.storyTimer.advance(by: 1)
                    }
                }
            }
        }
    }
}

struct RecipeStoryView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeStoryView()
    }
}

class StoryTimer: ObservableObject {
    
    @Published var progress: Double
    private var interval: TimeInterval
    private var max: Int
    private let publisher: Timer.TimerPublisher
    private var cancellable: Cancellable?
    
    
    init(items: Int, interval: TimeInterval) {
        self.max = items
        self.progress = 0
        self.interval = interval
        self.publisher = Timer.publish(every: 0.1, on: .main, in: .default)
    }
    
    func start() {
        self.cancellable = self.publisher.autoconnect().sink(receiveValue: {  _ in
            var newProgress = self.progress + (0.1 / self.interval)
            if Int(newProgress) >= self.max { newProgress = 0 }
            self.progress = newProgress
        })
    }
    
    func advance(by number: Int) {
        let newProgress = Swift.max((Int(self.progress) + number) % self.max , 0)
        self.progress = Double(newProgress)
    }
}
