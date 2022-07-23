//
//  ContentView.swift
//  MailDemoApp
//
//  Created by star on 30.06.22.
//

import SwiftUI


struct ContentView: View {
    
    var body: some View {
        
        TabView {
            
            NavigationView {
                
                List(0..<4) {
                    _ in
                    
                    NavigationLink(destination: Text("Nachrichtentext")) {
                        SingleMessageView()
                    }
                    
                }
                .listStyle(GroupedListStyle())
                .navigationTitle("Inbox")
                
            }
            .tabItem {
                Image(systemName: "envelope.fill")
                Text("Inbox")
            }
            
            Text("Sent")
                .tabItem {
                    Image(systemName: "paperplane.fill")
                    Text("Sent")
                }
            
            
        }
    }
}

struct SingleMessageView: View {
    var body: some View {
        
        HStack {
            Image(systemName: "person.crop.circle.fill")
                .resizable()
                .frame(width: 42, height: 42)
                .foregroundColor(.blue)
            
            VStack(alignment: .leading) {
                
                HStack {
                    Text("Absender")
                        .font(Font.headline)
                    
                    Spacer()
                    
                    Text("2020-11-04")
                        .font(Font.subheadline.monospacedDigit())
                        .foregroundColor(.secondary)
                }
                
                Text("Betreffzeile abcdefgh")
                    .font(Font.subheadline)
                    .lineLimit(1)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
