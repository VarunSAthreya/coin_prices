import 'dart:convert';
import 'package:http/http.dart' as http;

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
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
  'XPR',
  'EOS',
  'XTZ',
  'ZEC',
  'IOTA',
  'VET',
  'ADA'];

const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate';
const apiKey = 'F0EA7DE0-06BD-4865-B002-FEFF6CA8C167';

class CoinData {
  Future getCoinData(String selectedCurrency, String selectedCoin) async {
    String cryptoPrices;
      String requestURL = '$coinAPIURL/$selectedCoin/$selectedCurrency?apikey=$apiKey';
      http.Response response = await http.get(requestURL);
      if (response.statusCode == 200) {
        var decodedData = jsonDecode(response.body);
        double price = decodedData['rate'];
        cryptoPrices = price.toStringAsFixed(0);
      } else {
        print(response.statusCode);
        throw 'Problem with the get request';
      }

    return cryptoPrices;
  }
}
