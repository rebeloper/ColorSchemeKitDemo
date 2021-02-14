//
//  ContentView.swift
//  Shared
//
//  Created by Alex Nagy on 14.02.2021.
//

import SwiftUI
import ColorSchemeKit

struct ContentView: View {
    
    @State var isSheetViewPresented = false
    
    @EnvironmentObject private var colorSchemeManager: ColorSchemeManager
    
    var body: some View {
        NavigationView {
            VStack(spacing: 12) {
                Button(action: {
                    isSheetViewPresented.toggle()
                }, label: {
                    Text("Present Sheet")
                })
                .sheet(isPresented: $isSheetViewPresented, content: {
                    SheetView()
                })
                
                NavigationLink("Push", destination: PushedView())
                
                Divider()
                
                Button(action: {
                    colorSchemeManager.switchTo(.system)
                }, label: {
                    Text("System")
                })
                
                Button(action: {
                    colorSchemeManager.switchTo(.light)
                }, label: {
                    Text("Light")
                })
                
                Button(action: {
                    colorSchemeManager.switchTo(.dark)
                }, label: {
                    Text("Dark")
                })
                
                Divider()
                
                Button(action: {
                    colorSchemeManager.toggle()
                }, label: {
                    Text("Toggle")
                })
                
                Spacer()
            }
            .navigationBarTitle("ColorSchemeKit")
        }
        .colorSchemedRootView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
