//
//  Route.swift
//  NavigationSample
//
//  Created by 田中裕貴 on 2023/06/30.
//

import Foundation

enum Route: Hashable {
    case detail
    case user(id: String)
    case web(url: URL)
}
