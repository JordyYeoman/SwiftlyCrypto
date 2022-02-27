//
//  HomeViewModel.swift
//  SwiftfulCrypto
//
//  Created by Jordy Yeoman on 25/2/2022.
//

import Foundation
import Combine


class HomeViewModel: ObservableObject {
    
    // This allCoins variable is going to subscribe to the allCoins variable in the CoinDataService class
    @Published var allCoins: [CoinModel] = []
    @Published var portfolio: [CoinModel] = []
    
    private let dataService = CoinDataService()
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        addSubscribers()
    }
    
    func addSubscribers() {
        dataService.$allCoins
            .sink { [weak self] (returnedCoins) in
                self?.allCoins = returnedCoins
            }
            .store(in: &cancellables)
    }
    
}
