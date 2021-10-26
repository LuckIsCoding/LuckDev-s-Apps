//
//  SheetPage.swift
//  LuckDev Apps
//
//  Created by Luke Drushell on 10/26/21.
//

import SwiftUI

struct SheetPage: View {
    
    @Binding var info: AppInfo
    
    var body: some View {
        NavigationView {
            ScrollView {
                HStack {
                    Image(info.icon)
                        .resizable()
                        .frame(width: 100, height: 100, alignment: .center)
                        .cornerRadius(20)
                        .padding()
                    Spacer()
                }
                Text(info.description)
                    .padding()
                Spacer()
                Button {
                    UIApplication.shared.open(URL(string: info.scheme)!)
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.05, execute: {
                        UIApplication.shared.open(URL(string: info.link)!)
                    })
                } label: {
                    HStack {
                        Spacer()
                        Text("Open \(info.title)")
                            .foregroundColor(.primary)
                            .bold()
                        Spacer()
                    }
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(30)
                        .padding()
                }
            } .navigationTitle(info.title)
        }
    }
}


