//
//  LandmarkList.swift
//  SwiftUI_ListNavigation
//
//  Created by zyyk on 2019/6/13.
//  Copyright © 2019 zyyk. All rights reserved.
//

import SwiftUI

struct LandmarkList : View {
    @State var showFavoritesOnly = false
    
    var body: some View {
        NavigationView {
            List(landmarkData) { landmark in
                
                if !self.showFavoritesOnly || landmark.isFavorite {
                    NavigationButton(destination: LandmarkDetail(landmark: landmark)) {
                        LandmarkRow(landmark: landmark)
                    }
                }
                }
                .navigationBarTitle(Text("Landmarks"))
        }
    }
}

#if DEBUG
struct LandmarkList_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
#endif
