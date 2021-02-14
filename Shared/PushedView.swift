//
//  PushedView.swift
//  ColorSchemeKitDemo
//
//  Created by Alex Nagy on 14.02.2021.
//

import SwiftUI

struct PushedView: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
            Spacer()
        }
        .navigationBarTitle("PushedView")
    }
}

struct PushedView_Previews: PreviewProvider {
    static var previews: some View {
        PushedView()
    }
}
