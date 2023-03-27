import 'package:flutter/material.dart';
import 'coin_data.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;  //Eger dart SDK' da io kisminda platforma bakarsan ios, windows, android icin olan kismi gorursun

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

//for (int i = 0; i < currenciesList.length; i++){
//String currency = currenciesList[i];
//Asagidaki donguyu bu sekilde de yapabilirdik.

class _PriceScreenState extends State<PriceScreen> {
  String selectedCurrency = 'USD';

  DropdownButton androidDropdown(){
    List <DropdownMenuItem> dropdownItems = [];
    for (String currency in currenciesList){
      var newItem = DropdownMenuItem(
        child: Text(currency),
        value: currency,
      );
      dropdownItems.add(newItem);
    }

    return DropdownButton (
      value: selectedCurrency,  //Bunu yazarak asgaida bastigimiz yerde USD yazilmasini sagliyoruz. Eger bu yazilmazsa uygulama basladiginda burada bir sey yazmayacak
      items : dropdownItems,
      onChanged: (value){
        setState(() {
          selectedCurrency = value; //Hangi para birimine tiklarsak onun sectigimiz yerin basinda cikmasini sagliyoruz.
          getData();
        });
      },
    );
  }

  CupertinoPicker iOSPicker() {
    List<Text> pickerItems = [];
    for (String currency in currenciesList) {
      pickerItems.add(Text(currency));
    }

    return CupertinoPicker(
      backgroundColor: Colors.lightBlue,
      itemExtent: 32.0,
      onSelectedItemChanged: (selectedIndex) {
        setState(() {
          selectedCurrency = currenciesList[selectedIndex];
          getData();
        });
      },
      children: pickerItems,
    );
  }

  Map <String, String> coinValues = {};
  bool isWaiting = true;

  void getData () async{
    try{
      var data = await CoinData().getCoinData(selectedCurrency);
      isWaiting = false;
      setState(() {
        coinValues = data;
      });
    }
    catch(e){
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CryptoCard(
                cryptoCurrency: 'BTC',
                value: isWaiting ? '?' : coinValues['BTC'],
                selectedCurrency: selectedCurrency,
              ),
              CryptoCard(
                cryptoCurrency: 'ETH',
                value: isWaiting ? '?' : coinValues['ETH'],
                selectedCurrency: selectedCurrency,
              ),
              CryptoCard(
                cryptoCurrency: 'LTC',
                value: isWaiting ? '?' : coinValues['LTC'],
                selectedCurrency: selectedCurrency,
              ),
            ],
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: Platform.isIOS ? iOSPicker() : androidDropdown(),  //Eger android kullanilacaksa dropdown, ios kullanilacaksa cupertino kullanilir
          ),
        ],
      ),
    );
  }
}



class CryptoCard extends StatelessWidget {

  final String? cryptoCurrency;
  final String? selectedCurrency;
  final String? value;

  const CryptoCard({this.value,this.selectedCurrency, this.cryptoCurrency });


  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
         child: Card(
           color: Colors.lightBlueAccent,
           elevation: 5.0,
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(10.0),
           ),
           child: Padding(
             padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
             child: Text(
               '1 $cryptoCurrency = $value $selectedCurrency ',
               textAlign: TextAlign.center,
               style: TextStyle(
                 fontSize: 20.0,
                 color: Colors.white,
               ),
             ),
           ),
         ),
    );
  }
}
