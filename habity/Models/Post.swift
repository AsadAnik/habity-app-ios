import Foundation

// Post model that matches the structure of the JSON dta from JSONPlaceholder Server
struct Post: Identifiable, Decodable {
    let id: Int
    let title: String
    let body: String
}
