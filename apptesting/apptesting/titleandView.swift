//
//  titleandView.swift
//  apptesting
//
//  Created by GOPAL BHUVA on 11/06/24.
//



import SwiftUI

struct titleandView: View {
    var body: some View {
        NavigationView {
            ZStack {
                VStack(spacing: 0) {
                    Color.orange
                    Color.white
                    Color.green
                }
                .edgesIgnoringSafeArea(.all)
            }
         
           
        }
    }
}




struct titleandView_Previews: PreviewProvider {
    static var previews: some View {
       titleandView()
    }
}

