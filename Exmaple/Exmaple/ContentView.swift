//
//  ContentView.swift
//  Exmaple
//
//  Created by ap on 31/10/2565 BE.
//

import SwiftUI
import PrBeliefHttps

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            Button("Fetch Data", action: fetch).padding()
        }
        .padding()
    }
    
    

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension ContentView{
    func fetch(){
        guard let url = URL(string: "https://www.google.com") else { return }
        ApiService.request(url, method: .get, body: nil) { result in
            switch result{
            case .success(let response):
                print("HTTP Request Success \(response.statusCode)")
                break
            case .failure(let response):
                if let response = response{
                    print("HTTP Request Failure \(response.statusCode)")
                }else{
                    print("HTTP Request Error")
                }
                break
            }
        }
    }
}
