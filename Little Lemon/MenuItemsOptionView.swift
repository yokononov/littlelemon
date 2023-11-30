//
//  MenuItemsOptionView.swift
//  Little Lemon
//
//  Created by Sergei on 18.02.2023.
//

import SwiftUI

//struct MenuItemsOptionView: View {
//    @State var viewModel: MenuViewViewModel
//    
//    var body: some View {
//        NavigationView {
//            List() {
//                Section(header: Text("Selected caterories")) {
//                    ForEach([MenuCategory.Food, MenuCategory.Drink, MenuCategory.Dessert]) { item in
//                        Text(item.rawValue)
//                            .onTapGesture {
//                                viewModel.setFilter(item: item)
//                                dismiss()
//                            }
//                            
//                    }
//                }
//                Section(header: Text("Sort By")) {
//                    ForEach([SortEnum.popular, SortEnum.byPrice, SortEnum.byName]) { item in
//                        Text(item.rawValue)
//                            .onTapGesture {
//                                viewModel.setSort(item: item)
//                                dismiss()
//                            }
//                    }
//                }
//            }
//            .navigationTitle("Filter")
//            .toolbar {
//                Button("Done") {
//                    print("About tapped!")
//                }
//            }
//        }
//    }
//    
//    @Environment(\.presentationMode) var presentationMode
//    private func dismiss() {
//        presentationMode.wrappedValue.dismiss()
//    }
//}
//
//struct MenuItemsOptionView_Previews: PreviewProvider {
//    static var previews: some View {
//        MenuItemsOptionView(viewModel: MenuViewViewModel())
//    }
//}
//
//
