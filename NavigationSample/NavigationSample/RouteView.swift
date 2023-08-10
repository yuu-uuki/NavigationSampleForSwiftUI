//
//  RouteView.swift
//  NavigationSample
//
//  Created by 田中裕貴 on 2023/06/30.
//

import SwiftUI

struct RouteView: View {
    @EnvironmentObject var appEnvironment: AppEnvironment
    
    var body: some View {
        TabView(selection: $appEnvironment.currentContext) {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag(AppEnvironment.Context.home)
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
                .tag(AppEnvironment.Context.search)
            MyPageView()
                .tabItem {
                    Image(systemName: "person")
                    Text("MyPage")
                }
                .tag(AppEnvironment.Context.myPage)
        }
    }
}

struct RouteView_Previews: PreviewProvider {
    static var previews: some View {
        RouteView()
    }
}
