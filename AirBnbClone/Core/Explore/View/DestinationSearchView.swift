//
//  DestinationSearchView.swift
//  AirBnbClone
//
//  Created by user263604 on 8/11/24.
//

import SwiftUI

enum DestinationSearchOptions {
    case location
    case dates
    case guests
}
struct DestinationSearchView: View {
    @Binding var show : Bool
    //@State private var destination = ""
    @State private var selectedOption : DestinationSearchOptions = .location
    @State private var fromDate = Date()
    @State private var toDate = Date()
    @State private var numGuests = 0
    @ObservedObject var viewModel : ExploreViewModel
    var body: some View {
        VStack {
            HStack {
                Button {
                    withAnimation(.snappy){
                        show.toggle()
                        viewModel.updateLocation()
                    }
                    
                } label: {
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundStyle(.black)
                }
                Spacer()
                if !viewModel.searchLocation.isEmpty {
                    Button("Clear") {
                        viewModel.searchLocation = ""
                        viewModel.updateLocation()
                       
                    }
                    .foregroundStyle(.black)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                }
            }
            .padding()
            
            VStack(alignment: .leading) {
                if selectedOption == .location {
                    Text("Where to ?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        TextField("Search Yor Destinnation",text: $viewModel.searchLocation)
                            .font(.subheadline)
                            .onSubmit {
                                viewModel.updateLocation()
                                show.toggle()
                            }
                    }
                    .frame(height: 44)
                    .padding(.horizontal)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: 1)
                            .foregroundStyle(Color(.systemGray4))
                    }
                } else {
                    ColapsedPickerView(tittle: "Where", description: "Add Destination")
                }
                
            }
            .modifier(CollapsedDestinationViewModifier())
            
            .frame(height: selectedOption == .location ? 120 : 64)
            
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .location
                }
                
            }
            
            //when
            VStack(alignment : .leading) {
                if selectedOption == .dates {
                    Text("When is Your Trip ?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    VStack {
                        DatePicker("From", selection: $fromDate, displayedComponents: .date)
                        Divider()
                        
                        DatePicker("To", selection: $toDate, displayedComponents: .date)
                        Divider()

                        
                    }
                    .foregroundStyle(.gray)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                } else {
                    ColapsedPickerView(tittle: "When", description: "Add Dates")
                        
                }
            }
            .modifier(CollapsedDestinationViewModifier())
            
            .frame(height: selectedOption == .dates ? 180 : 64)
            
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .dates
                }
                
            }
            

            
            //who
            
            VStack(alignment: .leading) {
                if selectedOption == .guests {
                    Text("Who's Coming ?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    HStack{
                        Stepper {
                            Text("\(numGuests) Adults")
                        } onIncrement: {
                            
                            numGuests += 1
                        } onDecrement: {
                            guard numGuests > 0 else {
                                return
                            }
                            numGuests -= 1
                        }
                    }
                    
                    
                    
                } else {
                    ColapsedPickerView(tittle: "Who", description: "Add Guests")
                        
                }
            }
            .modifier(CollapsedDestinationViewModifier())
            .frame(height: selectedOption == .guests ? 120 : 64)
            
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .guests
                }
                
            }
            Spacer()

            
        }
        
        
    }
}

#Preview {
    DestinationSearchView(show: .constant(false),viewModel: ExploreViewModel(service: ExploreService()))
}

struct CollapsedDestinationViewModifier : ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            
            .shadow(radius: 10)
            
    }
    
}

struct ColapsedPickerView: View {
    let tittle : String
    let description : String
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(tittle)
                // .font(.title2)
                    .foregroundStyle(.gray)
                Spacer()
                Text(description)
                //.font(.title2)
            }
            .fontWeight(.semibold)
            .font(.subheadline)
        }
//        .padding()
//        .background(.white)
//        .clipShape(RoundedRectangle(cornerRadius: 12))
//        .padding()
//        
//        .shadow(radius: 10)
    }
}
