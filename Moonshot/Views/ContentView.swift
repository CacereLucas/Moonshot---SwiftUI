//
//  ContentView.swift
//  Moonshot
//
//  Created by Lucas on 12/1/22.
//

import SwiftUI

struct ContentView: View {
    @State private var showingGrid = false
    
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    let columns = [GridItem(.adaptive(minimum: 150))]
    
    var body: some View {
        NavigationView {
            VStack {
                if showingGrid {
                    ListLayout()
                } else {
                    GridLayout()
                }
            }
            .navigationTitle("Moonshot")
            .navigationBarTitleDisplayMode(.inline)
            .background(.darkBackground)
            .preferredColorScheme(.dark)
            .toolbar {
                Toggle(isOn: $showingGrid) {
                    Image(systemName: "list.bullet.rectangle")
                        .foregroundColor(Color(.systemPink))
                }
            }
        }
    }
     
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
