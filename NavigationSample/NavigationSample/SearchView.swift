//
//  SearchView.swift
//  NavigationSample
//
//  Created by 田中裕貴 on 2023/06/30.
//

import SwiftUI

struct SearchView: View {
    @EnvironmentObject var appEnvironment: AppEnvironment
    var body: some View {
        Text("SearchView")
            .onAppear {
                print(appEnvironment.currentContext)
            }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
