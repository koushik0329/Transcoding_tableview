//
//  TranscobingViewModel.swift
//  Transcoding_tableview
//
//  Created by Koushik Reddy Kambham on 9/12/25.
//

import Foundation

class TranscobingViewModel {
    var transcodingData: [Transcobing] = []
    var networkManager = NetworkManager.shared
        
    func getDataFromServer(closure: @escaping (() -> Void)) {
        networkManager.getData(from: ServerURL.baseURL.rawValue) { [weak self] result in
            var allTranscodings: [Transcobing] = []
            if let result = result {
                for item in result {
                    if let transcodings = item.transcodings {
                        allTranscodings.append(contentsOf: transcodings)
                    }
                }
            }
            self?.transcodingData = allTranscodings
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
