//
//  ContentView.swift
//  WatchLandmarks WatchKit Extension
//
//  Created by Crazygit on 2022/8/9.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
