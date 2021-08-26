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
       
    }
  ]
}
''';

class MyAsset {
  String? balance;
  String? thisWeek;
  List<MyAssets>? myAssets;

  MyAsset({this.balance, this.thisWeek, this.myAssets});

  MyAsset.fromJson(Map<String, dynamic> json) {}
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
