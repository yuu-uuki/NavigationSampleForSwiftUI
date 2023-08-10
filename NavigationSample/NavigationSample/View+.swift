//
//  View+.swift
//  NavigationSample
//
//  Created by 田中裕貴 on 2023/06/30.
//

import Foundation
import SwiftUI

extension View {
    func navigation(path: Binding<[Route]>) -> some View {
        self.modifier(NavigationModifier(path: path))
    }
}
