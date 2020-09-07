//
//  DetailView.swift
//  KUW-HackerNews
//
//  Created by Aaryaman Saini on 06/09/20.
//  Copyright © 2020 Aaryaman Saini. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}

