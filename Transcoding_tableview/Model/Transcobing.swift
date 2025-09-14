struct TranscobingList : Decodable {
    var title: String?
    var transcodings: [Transcobing]?
}

struct Transcobing: Decodable {
    var id: String?
    var title: String?
    var height: Int?
}
