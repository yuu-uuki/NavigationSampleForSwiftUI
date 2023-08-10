//
//  NavigationModifier.swift
//  NavigationSample
//
//  Created by 田中裕貴 on 2023/06/30.
//

import Foundation
import SwiftUI

struct NavigationModifier: ViewModifier {
    @Binding var path: [Route]

    @ViewBuilder
    fileprivate func coordinator(_ route: Route) -> some View {
        switch route {
        case .detail:
            DetailView()
        case .user(let id):
            UserView(userId: id)
        case .web(let url):
            WebView(url: url)
        }
    }

    func body(content: Content) -> some View {
        NavigationStack(path: $path) {
            content
                .navigationDestination(for: Route.self) { route in
                    coordinator(route)
                }
        }
    }
}
