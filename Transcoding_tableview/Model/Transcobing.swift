//
//  Transcobing.swift
//  Transcoding_tableview
//
//  Created by Koushik Reddy Kambham on 9/12/25.
//

struct TranscobingList : Decodable {
    var title: String?
    var transcodings: [Transcobing]?
}

struct Transcobing: Decodable {
    var id: String?
    var title: String?
    var height: Int?
}
