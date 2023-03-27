import 'dart:convert';   //Bu kutuphane ile jsonDecode gibi kodlar geliyor

import 'package:http/http.dart' show Response, get;

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'TL',
  'USD',
  'ZAR',
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];


const apiURL = 'https://rest.coinapi.io/v1/exchangerate';
const apiKey = 'your-api-key';

class CoinData {

  Future getCoinData(String selectedCurrency) async{
    Map <String, String> cryptoPrices = {};

    for (String crypto in cryptoList){
      String requestURL = '$apiURL/$crypto/$selectedCurrency?apikey=$apiKey';
      Response response = await get(Uri.parse(requestURL));

      if (response.statusCode == 200){
        Map decodedData = jsonDecode(response.body);  //Linktekinde { } parantez ile olanlar map, eger [] ise List
        double lastPrice = decodedData['rate'];  //Rate String, ama value' su double
        cryptoPrices[crypto] = lastPrice.toStringAsFixed(0);
      }
      else{
        print(response.statusCode);
        throw 'Problem with the get request';
      }
    }
    return cryptoPrices;
  }

}
