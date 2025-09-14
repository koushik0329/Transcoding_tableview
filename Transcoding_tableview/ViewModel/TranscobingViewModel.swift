import Foundation

class TranscobingViewModel {
    var transcodingData: [Transcobing] = []
    var networkManager = NetworkManager.shared
    var allTranscodings: [Transcobing] = []
    var headingData: String = ""
    
    func getDataFromServer(closure: @escaping (() -> Void)) {
        networkManager.getData(from: ServerURL.baseURL.rawValue) { [weak self] result in
            self?.transcodingData = result?.first?.transcodings ?? []
            self?.headingData = result?.first?.title ?? ""
            closure()
        }
    }
        
    func getListCount() -> Int {
        transcodingData.count
    }
    
    func getData(at index: Int) -> Transcobing {
        transcodingData[index]
    }
    
    func getHeight() -> CGFloat {
        80
    }
}
