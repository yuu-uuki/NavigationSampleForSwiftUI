//
//  DetailView.swift
//  NavigationSample
//
//  Created by 田中裕貴 on 2023/06/30.
//

import SwiftUI

struct DetailView: View {
    @EnvironmentObject var appEnvironment: AppEnvironment
    var body: some View {
        VStack {
            Button {
                appEnvironment.homePath.append(.user(id: ""))
            } label: {
                Text("SecondView").font(.title)
            }
            .onAppear {
                print(appEnvironment.path)
            }
        }
        .navigationTitle("Detail")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
