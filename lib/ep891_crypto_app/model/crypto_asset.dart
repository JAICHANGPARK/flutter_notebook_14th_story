import 'my_assets.dart';

String kCryptoAsset = '''
{
  "crypto_assets" : [
        {
            "coin" : "Doge Coin",
            "unit" : "DOGE",
            "price": "26.34",
            "change" : {
              "up_down" : "down",
              "rate" : "0.23"
              }
        },
        {
            "coin" : "Bitcoin",
            "unit" : "BTC",
            "price": "1,953.45",
            "change" : {
              "up_down" : "up",
              "rate" : "3.05"
              }
        },
        {
            "coin" : "Ethereum",
            "unit" : "ETH",
            "price": "893.65",
            "change" : {
              "up_down" : "up",
              "rate" : "3.64"
              }
        },
        {
            "coin" : "Binance Coin",
            "unit" : "BNB",
            "price": "484.10",
            "change" : {
              "up_down" : "down",
              "rate" : "4.56"
              }
        }
  ]
}
''';

class CryptoAsset {
  List<CryptoAssets>? cryptoAssets;

  CryptoAsset({this.cryptoAssets});

  CryptoAsset.fromJson(Map<String, dynamic> json) {
    if (json['crypto_assets'] != null) {
      cryptoAssets = [];
      json['crypto_assets'].forEach((v) {
        cryptoAssets?.add(CryptoAssets.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (cryptoAssets != null) {
      data['crypto_assets'] = cryptoAssets?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CryptoAssets {
  String? coin;
  String? unit;
  String? price;
  Change? change;

  CryptoAssets({this.coin, this.unit, this.price, this.change});

  CryptoAssets.fromJson(Map<String, dynamic> json) {
    coin = json['coin'];
    unit = json['unit'];
    price = json['price'];
    change = Change.fromJson(json['change']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['coin'] = coin;
    data['unit'] = unit;
    data['price'] = price;
    if (change != null) {
      data['change'] = change?.toJson();
    }
    return data;
  }
}
