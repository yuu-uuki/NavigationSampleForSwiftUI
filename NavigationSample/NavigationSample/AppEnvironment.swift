//
//  AppEnvironment.swift
//  NavigationSample
//
//  Created by 田中裕貴 on 2023/06/30.
//

import Foundation

class AppEnvironment: ObservableObject {
    enum Context: Hashable {
        case home
        case search
        case myPage
    }
    
    @Published var currentContext: Context = .home
    
    @Published var homePath: [Route] = []
    @Published var searchPath: [Route] = []
    @Published var myPagePath: [Route] = []
    
    var path: [Route] {
        switch currentContext {
        case .home:
            return homePath
        case .search:
            return searchPath
        case .myPage:
            return myPagePath
        }
    }
    
    func appendToPath(route: Route) {
        switch currentContext {
        case .home:
            homePath.append(route)
        case .search:
            searchPath.append(route)
        case .myPage:
            myPagePath.append(route)
        }
    }
}
