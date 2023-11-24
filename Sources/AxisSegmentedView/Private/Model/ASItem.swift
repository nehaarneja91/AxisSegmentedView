//
//  ASItem.swift
//  AxisSegmentedView
//
//  Created by jasu on 2022/03/18.
//  Copyright (c) 2022 jasu All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is furnished
//  to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
//  INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
//  PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
//  HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
//  CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE
//  OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//

import SwiftUI

/// Information on the tab button.
struct ASItem: Identifiable {
    
    let id = UUID()
    
    /// A tag that separates the tab view.
    let tag: Any
    
    /// The size of the selected tab.
    /// If it is less than or equal to 0, it is the same as normal size.
    let selectArea: CGFloat
    
    /// The tab button view in the selected state.
    let select: AnyView
    
    /// Initializes `ASItem`
    /// - Parameters:
    ///   - tag: A tag that separates the tab view.
    ///   - selectArea: The size of the selected tab. If it is less than or equal to 0, it is the same as normal size.
    ///   - select: The tab button view in the selected state.
    init<V: View>(tag: Any, selectArea: CGFloat = 0, select: V) {
        self.tag = tag
        self.selectArea = selectArea
        self.select = AnyView(select)
    }
}
