String kCryptoMyAsset = '''
    {
      "balance" : "23,874.45",
      "this_week" : "6.78",
      "my_assets" : [
        {
            "coin" : "Bitcoin",
            "unit" : "BTC",
            "price": "1,953.45",
            "change" :{
              "up_down" : "up",
              "rate" : "3.05"
            }
            
        }
      ]
    }
    ''';

class MyAsset {
    String balance;
    String thisWeek;
    List<MyAssets> myAssets;
    MyAsset({this.balance, this.thisWeek, this.myAssets});

    


}
