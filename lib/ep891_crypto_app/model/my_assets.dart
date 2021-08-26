String kCryptoMyAsset = '''
{
  "balance" : "23,874.45",
  "this_week" : "6.78",
  "my_assets" : [
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
            "coin" : "Ethereum",
            "unit" : "ETH",
            "price": "893.65",
            "change" : {
              "up_down" : "down",
              "rate" : "3.64"
              }
        }
  ]
}
''';

class MyAsset {
  String? balance;
  String? thisWeek;
  List<MyAssets>? myAssets;

  MyAsset({this.balance, this.thisWeek, this.myAssets});

  MyAsset.fromJson(Map<String, dynamic> json) {
    balance = json['balance'];
    thisWeek = json['this_week'];
    if (json['my_assets'] != null) {
      myAssets = [];
      json['my_assets'].forEach((v) {
        myAssets?.add(MyAssets.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['balance'] = balance;
    data['this_week'] = thisWeek;
    if (myAssets != null) {
      data['my_assets'] = myAssets?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class MyAssets {
  String? coin;
  String? unit;
  String? price;
  Change? change;

  MyAssets({this.coin, this.unit, this.price, this.change});

  MyAssets.fromJson(Map<String, dynamic> json) {
    coin = json['coin'];
    unit = json['unit'];
    price = json['price'];
    change = json['change'] != null ? Change.fromJson(json['change']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['coin'] = coin;
    data['unit'] = unit;
    data['price'] = price;
    data['change'] = change?.toJson();
    return data;
  }
}

class Change {
  String? upDown;
  String? rate;

  Change({this.upDown, this.rate});

  Change.fromJson(Map<String, dynamic> json) {
    upDown = json['up_down'];
    rate = json['rate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['up_down'] = upDown;
    data['rate'] = rate;
    return data;
  }
}
