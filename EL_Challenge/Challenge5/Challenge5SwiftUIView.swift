//
//  Challenge5SwiftUIView.swift
//  EL_Challenge
//
//  Created by Froy on 7/14/22.
//

import SwiftUI

struct Challenge5SwiftUIView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack(alignment: .center) {
            HStack {
                Image("squareLogo")
                    .resizable()
                    .frame(width: 180, height: 180, alignment: .center)
                    .padding(.top, 40)
            }
            Spacer()
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Text("GO BACK")
                    .font(.system(size: 20))
            }
            .padding(.bottom, 20)
        }
    }
}

struct Challenge5SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Challenge5SwiftUIView()
    }
}
