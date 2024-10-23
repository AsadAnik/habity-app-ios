import Foundation

class PostViewModel: ObservableObject {
    @Published var posts: [Post] = []
    
    init() {
        fetchPosts()
    }
    
    func fetchPosts() {
        guard let url = URL(string: "http://jsonplaceholder.typicode.com/posts") else {
            print("Invalid URL")
            return;
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let data = data {
                do {
                    let decodedPosts = try JSONDecoder().decode([Post].self, from: data)
                    DispatchQueue.main.async {
                        self.posts = decodedPosts
                    }
                } catch {
                    print("Error decoding data: \(error)")
                }
                
            } else if let error = error {
                print("Network error: \(error)")
            }
        }.resume()
    }
}
