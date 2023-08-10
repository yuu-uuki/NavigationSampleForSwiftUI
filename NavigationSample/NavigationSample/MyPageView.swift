//
//  MyPageView.swift
//  NavigationSample
//
//  Created by 田中裕貴 on 2023/06/30.
//

import SwiftUI

struct MyPageView: View {
    @EnvironmentObject var appEnvironment: AppEnvironment
    var body: some View {
        Text("MyPage")
            .onAppear {
                print(appEnvironment.currentContext)
            }
    }
}

struct MyPageView_Previews: PreviewProvider {
    static var previews: some View {
        MyPageView()
    }
}
