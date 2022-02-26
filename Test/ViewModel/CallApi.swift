//
//  CallApi.swift
//  Test
//
//  Created by Huy Hoang Nguyen on 26/02/2022.
//

import Foundation

class ApiCall {
    func getUserComments(completion:@escaping ([Comments]) -> ()) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1/comments") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let comments = try! JSONDecoder().decode([Comments].self, from: data!)
            print(comments)
            
            DispatchQueue.main.async {
                completion(comments)
            }
        }
        .resume()
    }
}
