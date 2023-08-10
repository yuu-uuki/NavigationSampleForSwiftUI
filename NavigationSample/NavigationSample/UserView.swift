//
//  UserView.swift
//  NavigationSample
//
//  Created by 田中裕貴 on 2023/06/30.
//

import SwiftUI

struct UserView: View {
    let userId: String
    
    @EnvironmentObject var appEnvironment: AppEnvironment
    
    var body: some View {
        VStack {
            Text(userId)
        }
        .navigationTitle("User")
        .navigationBarTitleDisplayMode(.inline)
        .onAppear {
            print(appEnvironment.homePath)
            print(appEnvironment.searchPath)
            print(appEnvironment.myPagePath)
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView(userId: "")
    }
}
