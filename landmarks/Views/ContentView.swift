//
//  ContentView.swift
//  Landmarks
//
//  Created by Crazygit on 2022/8/7.
//

import SwiftUI

struct ContentView: View {
    enum Tab {
        case featured
        case list
    }

    @State private var selection: Tab = .featured

    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }.tag(Tab.featured)

            LandmarkList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ModelData())
    }
}
