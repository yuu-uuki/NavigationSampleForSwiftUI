//
//  NavigationSampleApp.swift
//  NavigationSample
//
//  Created by 田中裕貴 on 2023/06/30.
//

import SwiftUI

@main
struct NavigationSampleApp: App {
    var body: some Scene {
        WindowGroup {
            RouteView().environmentObject(AppEnvironment())
        }
    }
}
