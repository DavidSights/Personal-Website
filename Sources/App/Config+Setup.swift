import FluentProvider

extension Config {
    
    public func setup() throws {
        
        Node.fuzzy = [Row.self,
                      JSON.self,
                      Node.self]

        try setupProviders()
    }
    
    private func setupProviders() throws {
        try addProvider(FluentProvider.Provider.self)
    }
}
