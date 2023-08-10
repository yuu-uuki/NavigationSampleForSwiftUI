//
//  ContentView.swift
//  NavigationSample
//
//  Created by 田中裕貴 on 2023/06/30.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var appEnvironment: AppEnvironment
    
    var body: some View {
        List {
            NavigationLink(value: Route.detail) {
                Text("Detail View")
            }
            NavigationLink(value: Route.user(id: "tsuzuki817")) {
                Text("User View")
            }
            NavigationLink(value: Route.web(url: URL(string: "https://google.com")!)) {
                Text("Web View")
            }
        }
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(.inline)
        .navigation(path: $appEnvironment.homePath)
        .onAppear {
            print(appEnvironment.currentContext)
            print(appEnvironment.path)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().environmentObject(AppEnvironment())
    }
}
