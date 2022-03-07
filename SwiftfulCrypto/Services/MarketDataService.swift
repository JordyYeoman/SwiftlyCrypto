//
//  MarketDataService.swift
//  SwiftfulCrypto
//
//  Created by Jordy Yeoman on 25/2/2022.
//

import Foundation
import Combine

class MarketDataService {
    
    @Published var marketData: MarketDataModel? = nil
    // Using a variable for our subscription means we can refer to it and cancel at anytime.
    var marketDataSubscription: AnyCancellable?
    
    init() {
        // When creating a new MarketDataService, this method is called
        getData()
    }
    
    private func getData() {
        guard let url = URL(string: "https://api.coingecko.com/api/v3/global") else { return }
        
        
        marketDataSubscription = NetworkingManager.download(url: url)
            .decode(type: GlobalData.self, decoder: JSONDecoder())
        // Sink the array -> 'Attaches a subscriber with closure-based behavior to a publisher that never fails.'
            .sink(
                receiveCompletion: NetworkingManager.handleCompletion,
                receiveValue: { [weak self] (returnedGlobalData) in
                    self?.marketData = returnedGlobalData.data
                    self?.marketDataSubscription?.cancel()
                })
    }
}
