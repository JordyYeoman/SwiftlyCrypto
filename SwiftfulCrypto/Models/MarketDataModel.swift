//
//  MarketDataModel.swift
//  SwiftfulCrypto
//
//  Created by Jordy Yeoman on 7/3/22.
//

import Foundation

// JSON data:
/*
 URL: https://api.coingecko.com/api/v3/global
 
 JSON Response:
 {
    "data":{
       "active_cryptocurrencies":13013,
       "upcoming_icos":0,
       "ongoing_icos":49,
       "ended_icos":3376,
       "markets":766,
       "total_market_cap":{
          "btc":46722075.879167356,
          "eth":701986423.0029969,
          "ltc":17854053329.866978,
          "bch":6361301850.436039,
          "bnb":4786464301.057279,
          "eos":911243696533.2308,
          "xrp":2452478271653.255,
          "xlm":10386090414760.041,
          "link":138435254338.333,
          "dot":107873470381.28302,
          "yfi":97174194.20089817,
          "usd":1780333603878.0422,
          "aed":6539343360404.448,
          "ars":194143465644276.1,
          "aud":2401273017237.811,
          "bdt":154103283983319.56,
          "bhd":679498146258.5271,
          "bmd":1780333603878.0422,
          "brl":9015609370038.41,
          "cad":2263213487257.8804,
          "chf":1640070020896.5098,
          "clp":1444095366418958.8,
          "cny":11256159210518.928,
          "czk":42233340801235.445,
          "dkk":12181989655210.816,
          "eur":1637582894851.8901,
          "gbp":1347520262106.4563,
          "hkd":13913120179278.482,
          "huf":635282671039415.9,
          "idr":2.5645819368128136e+16,
          "ils":5843980661401.755,
          "inr":136872960777282.52,
          "jpy":204624423095326.2,
          "krw":2183748327114455.2,
          "kwd":540188822088.6744,
          "lkr":363149664077286.25,
          "mmk":3204606876597775.5,
          "mxn":37347571292112.96,
          "myr":7439123963804.412,
          "ngn":750618282828150.0,
          "nok":15976380838817.605,
          "nzd":2580488519138.593,
          "php":92845278707373.9,
          "pkr":321199750605454.6,
          "pln":8053862475221.851,
          "rub":189605528813011.1,
          "sar":6680167748471.191,
          "sek":17698463707510.35,
          "sgd":2427146605502.9697,
          "thb":58512296457366.32,
          "try":25400731659969.566,
          "twd":50392342657767.91,
          "uah":54159469812564.9,
          "vef":178264803756.30814,
          "vnd":4.068404880687883e+16,
          "zar":27396612033602.707,
          "xdr":1277241593093.3713,
          "xag":68749415857.36255,
          "xau":895169539.3659192,
          "bits":46722075879167.36,
          "sats":4.672207587916736e+15
       },
       "total_volume":{
          "btc":2024034.315535224,
          "eth":30410562.51165894,
          "ltc":773450578.3626733,
          "bch":275576223.7546736,
          "bnb":207353115.48397973,
          "eos":39475739827.32238,
          "xrp":106243142808.30212,
          "xlm":449932992234.5999,
          "link":5997115924.071522,
          "dot":4673157210.5712805,
          "yfi":4209656.783139641,
          "usd":77125346841.7994,
          "aed":283289111484.6139,
          "ars":8410436163350.359,
          "aud":104024893937.24153,
          "bdt":6675866366159.993,
          "bhd":29436354003.762672,
          "bmd":77125346841.7994,
          "brl":390562756406.8724,
          "cad":98044054665.7005,
          "chf":71049026390.8682,
          "clp":62559261795143.41,
          "cny":487625005407.2769,
          "czk":1829579046583.1892,
          "dkk":527732653776.1108,
          "eur":70941282281.33012,
          "gbp":58375558021.783104,
          "hkd":602726487407.2435,
          "huf":27520907452273.25,
          "idr":1110995551339665.5,
          "ils":253165493515.14352,
          "inr":5929436230500.461,
          "jpy":8864478864609.035,
          "krw":94601566120547.7,
          "kwd":23401372738.73872,
          "lkr":15731907624747.768,
          "mmk":138825901118108.53,
          "mxn":1617923957245.2405,
          "myr":322268261778.45935,
          "ngn":32517330057026.035,
          "nok":692108440118.4475,
          "nzd":111788639851.72453,
          "php":4022125014846.529,
          "pkr":13914606856256.445,
          "pln":348899181290.85046,
          "rub":8213849438651.618,
          "sar":289389726419.7998,
          "sek":766710322736.9297,
          "sgd":105145756602.89337,
          "thb":2534795247898.779,
          "try":1100378173530.6882,
          "twd":2183032942357.1284,
          "uah":2346227631137.9297,
          "vef":7722560979.269363,
          "vnd":1.762462590339429e+15,
          "zar":1186841163239.9702,
          "xdr":55331034955.2031,
          "xag":2978274707.4033284,
          "xau":38779395.64552519,
          "bits":2024034315535.224,
          "sats":202403431553522.4
       },
       "market_cap_percentage":{
          "btc":40.615502720976664,
          "eth":17.077004154227275,
          "usdt":4.496738538468961,
          "bnb":3.508705257167634,
          "usdc":2.9660898040865957,
          "xrp":1.9561236478384092,
          "luna":1.6447046667555194,
          "sol":1.4976771772385786,
          "ada":1.4756505224048362,
          "avax":1.071467059891802
       },
       "market_cap_change_percentage_24h_usd":-4.00212065058889,
       "updated_at":1646631474
    }
 }
 
 */
struct GlobalData: Codable {
    let data: MarketDataModel?
}

// MARK: - DataClass
struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return item.value.asPercentString()
        }
        return ""
    }
}
