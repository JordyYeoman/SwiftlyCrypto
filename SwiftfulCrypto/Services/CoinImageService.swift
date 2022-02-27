//
//  CoinImageService.swift
//  SwiftfulCrypto
//
//  Created by Jordy Yeoman on 27/2/22.
//

import Foundation
import SwiftUI
import Combine

class CoinImageService {
    
    @Published var image: UIImage? = nil
    
    var imageSubscription: AnyCancellable?
    
    init() {
//        getCoinImage()
    }
    
    func getCoinImage(urlString: String) {
        guard let url = URL(string: urlString) else { return }
        
        imageSubscription = NetworkingManager.download(url: url)
            .tryMap({ (data) -> UIImage? in
                return UIImage(data: data)
            })
            .sink(
                receiveCompletion: NetworkingManager.handleCompletion,
                receiveValue: { [weak self] (returnedCoins) in
                    self?.allCoins = returnedCoins
                    self?.coinSubscription?.cancel()
                })
    
    }
}
