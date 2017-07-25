import Vapor

extension Droplet {
    
    func setupRoutes() throws {
        
        get("info") { request in
            return request.description
        }
        
        get { request in
            return try self.view.make("index.html")
        }
    }
}
