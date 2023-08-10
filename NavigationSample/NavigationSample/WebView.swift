//
//  WebView.swift
//  NavigationSample
//
//  Created by 田中裕貴 on 2023/06/30.
//

import SwiftUI

struct WebView: View {
    let url: URL
    
    @EnvironmentObject var appEnvironment: AppEnvironment
    
    var body: some View {
        Link("Web", destination: url)
    }
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(url: URL(string: "https://www.google.com")!)
    }
}
