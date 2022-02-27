//
//  CoinDataService.swift
//  SwiftfulCrypto
//
//  Created by Jordy Yeoman on 25/2/2022.
//

import Foundation
import Combine

class CoinDataService {
    @Published var allCoins: [CoinModel] = []
    
    // Using a variable for our subscription means we can refer to it and cancel at anytime.
    var coinSubscription: AnyCancellable?
    
    init() {
        // When creating a new CoinDataService class, this method is called
        getCoins()
    }
    
    private func getCoins() {
        guard let url = URL(string: "https://api.coingecko.com/api/v3/coins/markets?vs_currency=aud&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h") else { return }
        
        
        coinSubscription = NetworkingManager.download(url: url)
            .decode(type: [CoinModel].self, decoder: JSONDecoder())
        // Sink the array -> 'Attaches a subscriber with closure-based behavior to a publisher that never fails.'
            .sink(
                receiveCompletion: NetworkingManager.handleCompletion,
                receiveValue: { [weak self] (returnedCoins) in
                    self?.allCoins = returnedCoins
                    self?.coinSubscription?.cancel()
                })
    }
}
