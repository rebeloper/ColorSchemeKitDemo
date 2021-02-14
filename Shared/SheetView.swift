//
//  SheetView.swift
//  ColorSchemeKitDemo
//
//  Created by Alex Nagy on 14.02.2021.
//

import SwiftUI

struct SheetView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello, World!")
                Spacer()
            }
            .navigationBarTitle("Sheet")
        }
        .colorSchemedRootView()
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}
