//
//  ProfileView.swift
//  AirBnbClone
//
//  Created by user263604 on 8/11/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack{
            VStack(alignment: .leading, spacing: 32){
                VStack(alignment: .leading, spacing: 8) {
                    Text("Profile")
                        .font(.title)
                        .fontWeight(.semibold)
                    Text("Login Start planning your next trip")
                }
                
                
                Button {
                    print("Login")
                } label: {
                    Text("Login")
                        .font(.subheadline)
                        .frame(width: 360,height: 48)
                        .foregroundStyle(.white)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius:8))
                    
                }
                HStack {
                    Text("Dont have a account")
                    Text("Sign up")
                    //.font(.subheadline)
                        .fontWeight(.semibold)
                        .underline()
                }
                .font(.caption)
            }
            
            
            VStack(spacing: 24) {
                ProfileOptionRowView(imageName: "gear", tittle: "Settings")
                ProfileOptionRowView(imageName: "gear", tittle: "Accessbilty")

                ProfileOptionRowView(imageName: "questionmark.circle", tittle: "Visit the Help Center")

                
            }
            .padding(.vertical)
            
        }
        .padding()
        
    }
        
}

#Preview {
    ProfileView()
}
