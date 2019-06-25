//
//  UserData.swift
//  SwiftUI_ListNavigation
//
//  Created by zyyk on 2019/6/17.
//  Copyright © 2019 zyyk. All rights reserved.
//

import Combine
import SwiftUI

final class UserData: BindableObject {
    let didChange = PassthroughSubject<UserData, Never>()
    
    var showFavoritesOnly = false {
        didSet {
            didChange.send(self)
        }
    }
    
    var landmarks = landmarkData {
        didSet {
            didChange.send(self)
        }
    }
}

