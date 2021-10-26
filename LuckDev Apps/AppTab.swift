//
//  AppTab.swift
//  LuckDev Apps
//
//  Created by Luke Drushell on 10/21/21.
//

import SwiftUI

struct AppTab: View {
    
    let image: String
    let title: String
    let link: String
    let scheme: String
    let description: String
    @Binding var info: AppInfo
    @Binding var showSheet: Bool
    
    var body: some View {
        Button {
            info = AppInfo(title: title, description: description, icon: image, scheme: scheme, link: link)
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.05, execute: {
                showSheet = true
            })
        } label: {
        HStack {
            Image(image)
                .resizable()
                .frame(width: 50, height: 50, alignment: .center)
                .cornerRadius(10)
            Text(title)
                .foregroundColor(.primary)
            Spacer()
            Image(systemName: "chevron.right")
                .resizable()
                .frame(width: 8, height: 13, alignment: .center)
                .foregroundColor(.gray)
        }
        }
    }
}

//struct AppTab_Previews: PreviewProvider {
//    static var previews: some View {
//        AppTab()
//    }
//}
