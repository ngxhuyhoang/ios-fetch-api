//
//  Comment.swift
//  Test
//
//  Created by Huy Hoang Nguyen on 26/02/2022.
//

import Foundation

struct Comments: Codable, Identifiable {
    let id = UUID()
    let name: String
    let email: String
    let body: String
}
