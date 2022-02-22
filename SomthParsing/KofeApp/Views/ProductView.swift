//
//  ProductView.swift
//  KofeApp
//
//  Created by Alex Smith on 21.11.2021.
//

import SwiftUI

struct ProductView: View {
    @Environment(\.presentationMode)
    var presentationMode:
    Binding<PresentationMode>
    var index: String
    var body: some View {
        NavigationView() {
            Image("A\(index)")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .ignoresSafeArea(.all)
        }
//        VStack {
//            HStack {
//                Image("Kofe")
//                    .resizable()
//                    .frame(width: 200, height: 200)
//                .ignoresSafeArea()
//            }
//            HStack {
//                Text("Product")
//                    .font(.headline)
//                    .fontWeight(.bold)
//                    .multilineTextAlignment(.center)
//                    .frame(width: nil)
//            }
//            HStack {
//                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
//                    Text("Buy")
//                        .font(.headline)
//                        .foregroundColor(.white)
//                        .padding()
//                        .frame(width: 70, height: 50)
//                        .background(.black)
//                        .cornerRadius(15.0)
//                }
//                Spacer()
//                    .frame(width: 0.0, height: 0.0)
//            }.padding()
//            Text("ОПИСАНИЕ ОПИСАНИЕ ОПИСАНИЕ ОПИСАНИЕ ОПИСАНИЕ.")
//                .lineLimit(nil)
//                .padding()
//        }
        .navigationBarItems(leading: Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }, label: {
            Image("back").foregroundColor(Color.white)
        }))
//        Spacer()
    }
}


struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(index: "Kofe")
    }
}
