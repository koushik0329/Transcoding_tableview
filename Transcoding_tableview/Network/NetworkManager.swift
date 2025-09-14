import Foundation

class NetworkManager {
    
    static let shared = NetworkManager()
    
    func getData(from serverUrl: String, closure: @escaping ([TranscobingList]?) -> Void) {
        
        guard let serverUrl = URL(string: serverUrl) else {
            print("invakid url")
            return
        }
        
        let urlSession = URLSession.shared
        urlSession.dataTask(with: serverUrl) { (data, response, error) in
            
            if let error = error {
                print("unabke to fetch data", error)
                return
            }
            
            guard let data = data else {
                print("no data found")
                return
            }
            
            do {
                let transcodingList = try JSONDecoder().decode([TranscobingList].self, from: data)
                closure(transcodingList)
            }
            catch {
                print("unable to parse data, \(error)")
            }
        }.resume()
    }
    
}


