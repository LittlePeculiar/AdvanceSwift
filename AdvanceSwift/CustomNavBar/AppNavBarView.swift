//
//  AppNavBarView.swift
//  AdvanceSwift
//
//  Created by Gina Mullins on 7/5/24.
//

import SwiftUI

struct AppNavBarView: View {
    
    var body: some View {
        CustomNavView {
            ZStack {
                Color.orange.ignoresSafeArea()
                
                CustomNavLink(destination:
                                Text("Data")
                                    .customNavBarItems(
                                            title: "ToDo",
                                            subTitle: "Known Identies",
                                            show: true
                                    )
                ) {
                    Text("Navigate")
                }
                
            }
            .customNavBarItems(
                title: "The Batcave",
                show: false
            )
        }
    }
}

struct AppNavBarView_Previews: PreviewProvider {
    static var previews: some View {
        AppNavBarView()
    }
}

extension AppNavBarView {
    private var defaultNavBarView: some View {
        NavigationView {
            ZStack {
                Color.green.ignoresSafeArea()
                
                NavigationLink {
                    Text("Destination")
                        .navigationTitle("Unknown Identities")
                        .navigationBarBackButtonHidden(false)
                } label: {
                    Text("Navigate")
                }

            }
            .navigationTitle("Batman ToDo")
        }
    }
}
