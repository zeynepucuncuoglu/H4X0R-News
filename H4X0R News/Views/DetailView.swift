//
//  DetailView.swift
//  H4X0R News
//
//  Created by Zeynep Üçüncüoğlu on 10.12.2023.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url: String?
    var body: some View {
        WebView(urlString: url)
    }
}   

#Preview {
    DetailView(url: "https://www.google.com")
}


