//
//  landmarksApp.swift
//  landmarks
//
//  Created by Crazygit on 2022/8/8.
//

import SwiftUI

@main
struct landmarksApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            // 注入环境变量，可以在任何子视图中获取该变量
            ContentView().environmentObject(modelData)
        }

        #if os(watchOS)
            WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
        #endif
    }
}
