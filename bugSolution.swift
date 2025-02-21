func fetchData() async throws -> Data {
    let url = URL(string: "https://api.example.com/data")!
    let (data, response) = try await URLSession.shared.data(from: url)
    guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
        throw URLError(.badServerResponse)
    }
    return data
}

Task { 
    do {
        let data = try await fetchData()
        // process data
    } catch let error as URLError {
        switch error.code {
        case .badServerResponse: 
            print("Bad server response")
        case .notConnectedToInternet: 
            print("No internet connection")
        default:
            print("Unknown URL error: \(error.localizedDescription)")
        }
    } catch {
        print("Other error: \(error.localizedDescription)")
    }
}