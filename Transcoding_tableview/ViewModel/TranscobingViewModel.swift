import Foundation

class TranscobingViewModel {
    var transcodingData: [Transcobing] = []
    var networkManager = NetworkManager.shared
    var allTranscodings: [Transcobing] = []
        
    func getDataFromServer(closure: @escaping (() -> Void)) {
        networkManager.getData(from: ServerURL.baseURL.rawValue) { [weak self] result in
            self?.transcodingData = result?.first?.transcodings ?? []
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
