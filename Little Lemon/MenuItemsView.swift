//
//  MenuItemsView.swift
//  Little Lemon
//
//  Created by Sergei on 18.02.2023.
//

import SwiftUI

struct MenuItemsView: View {
    @ObservedObject var viewModel: MenuViewViewModel
    @State private var showingSheet = false
    
    var columns: [GridItem] = [
        GridItem(.fixed(100), spacing: 16),
        GridItem(.fixed(100), spacing: 16),
        GridItem(.fixed(100), spacing: 16)
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(
                    columns: columns,
                    alignment: .center,
                    spacing: 16,
                    pinnedViews: []
                ) {
                    if !viewModel.foods.isEmpty {
                        Section {
                            ForEach(viewModel.foods, id: \.self) { food in
                                NavigationLink (
                                    destination: MenuItemDetailsView(model: food),
                                    label: {
                                        VStack {
                                            Color.red
                                                .frame(height: 70)
                                            Text(food.title)
                                        }
                                    }
                                )
                                .buttonStyle(PlainButtonStyle())
                                
                            }
                        } header: {
                            Text("Food")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading)
                        }
                    }
                    
                    if !viewModel.drinks.isEmpty {
                        Section {
                            ForEach(viewModel.drinks, id: \.self) { drink in
                                NavigationLink (
                                    destination: MenuItemDetailsView(model: drink),
                                    label: {
                                        VStack {
                                            Color.red
                                                .frame(height: 70)
                                            Text(drink.title)
                                        }
                                    }
                                )
                                .buttonStyle(PlainButtonStyle())
                                
                            }
                        } header: {
                            Text("Drink")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading)
                        }
                    }
                    
                    if !viewModel.deserts.isEmpty {
                        Section {
                            ForEach(viewModel.deserts, id: \.self) { desert in
                                NavigationLink (
                                    destination: MenuItemDetailsView(model: desert),
                                    label: {
                                        VStack {
                                            Color.red
                                                .frame(height: 70)
                                            Text(desert.title)
                                        }
                                    }
                                )
                                .buttonStyle(PlainButtonStyle())
                                
                            }
                        } header: {
                            Text("Desert")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading)
                        }
                    }
                }
            }
            .navigationTitle("Menu")
            .toolbar {
                Button {
                    showingSheet.toggle()
                } label: {
                    Image(systemName: "slider.horizontal.3")
                }
                .sheet(isPresented: $showingSheet) {
                    MenuItemsOptionView(viewModel: viewModel)
                }
            }
        }
        
    }
}

struct MenuItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView(viewModel: MenuViewViewModel())
    }
}
