//
//  ContentView.swift
//  LuckDev Apps
//
//  Created by Luke Drushell on 10/21/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var showSheet = false
    @State var info = AppInfo(title: "", description: "", icon: "", scheme: "", link: "")
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: true) {
            VStack {
                AppTab(image: "CashStash", title: "Cash Stash", link: "https://apps.apple.com/us/app/cash-stashes/id1591099256", scheme: "cashstash://", description: """
Trouble keeping track of your money? Finance trackers too complicated, but a note too difficult to manage? Never fear, Cash Stash is here!

Keep track of your money in a simple, insanely intuitive way! The Perfect Blend of Feature Packed, and Simple to Use!
""", info: $info, showSheet: $showSheet)
                Divider()
                AppTab(image: "BigScorekeep", title: "Big Scorekeep", link: "https://apps.apple.com/us/app/big-scorekeep/id1565902399", scheme: "bigscorekeep://", description: """
Seamless Way to Track Big 2 Scores!


Big Scorekeep is the best way to keep track of Big 2 Scores! Keeps track of round scores for every player, who trades with who, and entire matches to look back on in the future!


Features:

Seamlessly Share Game Data with Friends

3 Additional Variations on the Typical Game

Custom Player Names

Keep Track of Everyone's Scores for the Round

Automatically Be Shown Who Trades with Who (Including for the Additional Trading Variations)

Track All Games Played to Look back in the Future, and to Keep a Tally at who is doing Best!

And so much More!


Game Types:

Includes Variations on the Standard Game - Original Rules are under the Name Capitalism
""", info: $info, showSheet: $showSheet)
                Divider()
                AppTab(image: "WatchableIcon", title: "Watchable", link: "https://apps.apple.com/us/app/watchable/id1586489845", scheme: "watchable://", description: """
Trouble Keeping Track of all the Things you want to Watch? Never fear, Watchable is here! With a Beautiful Design, Organization Features, and Release Notifications!



Trouble Keeping Track of all the Things you want to Watch? Never fear, Watchable is here! An app designed specifically for keeping track of all the shows and movies that are releasing soon, you're watching at the moment, or that you want to watch sometime!

No more notes lists with 100 different things your friends told you to watch, keep it in this beautiful app now!



- Now with a Comprehensive Search Bar


- Platform Selection


- Notification Support for when a New Movie or Show Premieres, or when a New Episode Releases


- Totals Counter


- Genre Selection


- and so much more!
""", info: $info, showSheet: $showSheet)
                Divider()
                AppTab(image: "ButtonGame", title: "A Button Game", link: "https://apps.apple.com/us/app/a-button-game/id1581722686", scheme: "buttongame://", description: """
Think you know how long a second is? We don't think so! Find out now with this simple and fun game!


A simple game where you're told how long to hold a button, and you have to see how close you can get. Think you can count better than your friends? Why don't you download this game and prove it!
""", info: $info, showSheet: $showSheet)
            }
            .padding()
            .background(Color.gray.opacity(0.3))
            .cornerRadius(20)
            .padding()
            .navigationTitle("My Apps")
                
                Spacer()
                
                Button {
                    UIApplication.shared.open(URL(string: "https://apps.apple.com/us/developer/luke-drushell/id1565902401")!)
                } label: {
                    HStack {
                        ZStack {
                            Circle()
                                .frame(width: 28, height: 28, alignment: .center)
                                .foregroundColor(.white)
                            Image(systemName: "person.circle.fill")
                                .resizable().frame(width: 30, height: 30, alignment: .center)
                        }
                        Text("All Apps by Me")
                            .foregroundColor(.primary)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .resizable()
                            .frame(width: 8, height: 13, alignment: .center)
                            .foregroundColor(.gray)
                    }
                        .padding()
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(30)
                        .padding()
                }
                
            } .sheet(isPresented: $showSheet, onDismiss: {
                
            }, content: {
                SheetPage(info: $info)
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct AppInfo {
    
    let title: String
    let description: String
    let icon: String
    let scheme: String
    let link: String
    
}

