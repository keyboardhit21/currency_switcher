import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../data/home_bloc.dart';

class CurrenclyListWidget extends StatelessWidget {

  final dynamic jsonObject;
  final HomeBloc _homeBloc;

  CurrenclyListWidget(this.jsonObject, this._homeBloc);

  @override
  Widget build(BuildContext context) {

    final rates = jsonObject['rates'];
    final base = jsonObject['base'];

    return Column(
      children: <Widget>[
        Container(
          color: Colors.grey[200],
          margin: EdgeInsets.only(bottom: 30.0),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 10.0),
              SvgPicture.asset(
                'assets/images/$base.svg',
                height: 30,
              ),
              SizedBox(height: 10.0,),
              Text(
                'Note: All currency is based off of $base',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0,),
            ],
          ),
        ),
        ListTile(
          leading: SvgPicture.asset(
            'assets/images/USD.svg',
            width: 110,
          ),
          title: Text(
            rates['USD'].toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          subtitle: Text('USD/US Dollar'),
          onTap: () {
            _homeBloc.targetResults('USD');
          },
        ),
        ListTile(
          leading: SvgPicture.asset(
            'assets/images/CAD.svg',
            width: 110,
          ),
          title: Text(
            rates['CAD'].toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          subtitle: Text('CAD/Canadian Dollar'),
          onTap: () {
            _homeBloc.targetResults('CAD');
          },
        ),
        ListTile(
          leading: SvgPicture.asset(
            'assets/images/HKD.svg',
            width: 110,
          ),
          title: Text(
            rates['HKD'].toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          subtitle: Text('HKD/Hong Kong Dollar'),
          onTap: () {
            _homeBloc.targetResults('HKD');
          },
        ),
        ListTile(
          leading: SvgPicture.asset(
            'assets/images/ISK.svg',
            width: 110,
          ),
          title: Text(
            rates['ISK'].toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          subtitle: Text('ISK/Icelandic Krona'),
          onTap: () {
            _homeBloc.targetResults('ISK');
          },
        ),
        ListTile(
          leading: SvgPicture.asset(
            'assets/images/PHP.svg',
            width: 110,
          ),
          title: Text(
            rates['PHP'].toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          subtitle: Text('PHP/Philippine Peso'),
          onTap: () {
            _homeBloc.targetResults('PHP');
          },
        ),
        ListTile(
          leading: SvgPicture.asset(
            'assets/images/HUF.svg',
            width: 110,
          ),
          title: Text(
            rates['HUF'].toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          subtitle: Text('HUF/Hungarian Forint'),
          onTap: () {
            _homeBloc.targetResults('HUF');
          },
        ),
        ListTile(
          leading: SvgPicture.asset(
            'assets/images/CZK.svg',
            width: 110,
          ),
          title: Text(
            rates['CZK'].toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          subtitle: Text('CZK/Czech Koruna'),
          onTap: () {
            _homeBloc.targetResults('CZK');
          },
        ),
        ListTile(
          leading: SvgPicture.asset(
            'assets/images/GBP.svg',
            width: 110,
          ),
          title: Text(
            rates['GBP'].toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          subtitle: Text('GBP/Great Britain Pound'),
          onTap: () {
            _homeBloc.targetResults('GBP');
          },
        ),
        ListTile(
          leading: SvgPicture.asset(
            'assets/images/RON.svg',
            width: 110,
          ),
          title: Text(
            rates['RON'].toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          subtitle: Text('RON/Romanian Leu'),
          onTap: () {
            _homeBloc.targetResults('RON');
          },
        ),
        ListTile(
          leading: SvgPicture.asset(
            'assets/images/SEK.svg',
            width: 110,
          ),
          title: Text(
            rates['SEK'].toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          subtitle: Text('SEK/Swedish Krona'),
          onTap: () {
            _homeBloc.targetResults('SEK');
          },
        ),
        ListTile(
          leading: SvgPicture.asset(
            'assets/images/IDR.svg',
            width: 110,
          ),
          title: Text(
            rates['IDR'].toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          subtitle: Text('IDR/Indonesian Rupiah'),
          onTap: () {
            _homeBloc.targetResults('IDR');
          },
        ),
        ListTile(
          leading: SvgPicture.asset(
            'assets/images/INR.svg',
            width: 110,
          ),
          title: Text(
            rates['INR'].toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          subtitle: Text('INR/Indian Rupee'),
          onTap: () {
            _homeBloc.targetResults('INR');
          },
        ),
        ListTile(
          leading: SvgPicture.asset(
            'assets/images/BRL.svg',
            width: 110,
          ),
          title: Text(
            rates['BRL'].toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          subtitle: Text('BRL/Brazillian Real'),
          onTap: () {
            _homeBloc.targetResults('BRL');
          },
        ),
        ListTile(
          leading: SvgPicture.asset(
            'assets/images/RUB.svg',
            width: 110,
          ),
          title: Text(
            rates['RUB'].toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          subtitle: Text('RUB/Russian Rouble'),
          onTap: () {
            _homeBloc.targetResults('RUB');
          },
        ),
        ListTile(
          leading: SvgPicture.asset(
            'assets/images/HRK.svg',
            width: 110,
          ),
          title: Text(
            rates['HRK'].toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          subtitle: Text('HRK/Croatian Kuna'),
          onTap: () {
            _homeBloc.targetResults('HRK');
          },
        ),
        ListTile(
          leading: SvgPicture.asset(
            'assets/images/JPY.svg',
            width: 110,
          ),
          title: Text(
            rates['JPY'].toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          subtitle: Text('JPY/Japanese Yen'),
          onTap: () {
            _homeBloc.targetResults('JPY');
          },
        ),
        ListTile(
          leading: SvgPicture.asset(
            'assets/images/THB.svg',
            width: 110,
          ),
          title: Text(
            rates['THB'].toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          subtitle: Text('THB/Thai Baht'),
          onTap: () {
            _homeBloc.targetResults('THB');
          },
        ),
        ListTile(
          leading: SvgPicture.asset(
            'assets/images/CHF.svg',
            width: 110,
          ),
          title: Text(
            rates['CHF'].toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          subtitle: Text('CHF/Swiss Franc'),
          onTap: () {
            _homeBloc.targetResults('CHF');
          },
        ),
        ListTile(
          leading: SvgPicture.asset(
            'assets/images/EUR.svg',
            width: 110,
          ),
          title: Text(
            rates['EUR'].toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          subtitle: Text('EUR/Euro'),
          onTap: () {
            _homeBloc.targetResults('EUR');
          },
        ),
        ListTile(
          leading: SvgPicture.asset(
            'assets/images/BGN.svg',
            width: 110,
          ),
          title: Text(
            rates['BGN'].toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          subtitle: Text('BGN/Bulgarian Lev'),
          onTap: () {
            _homeBloc.targetResults('BGN');
          },
        ),
        ListTile(
          leading: SvgPicture.asset(
            'assets/images/TRY.svg',
            width: 110,
          ),
          title: Text(
            rates['TRY'].toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          subtitle: Text('TRY/Turkish Lira'),
          onTap: () {
            _homeBloc.targetResults('TRY');
          },
        ),
        ListTile(
          leading: SvgPicture.asset(
            'assets/images/CNY.svg',
            width: 110,
          ),
          title: Text(
            rates['CNY'].toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          subtitle: Text('CNY/Chinese Yuan'),
          onTap: () {
            _homeBloc.targetResults('CNY');
          },
        ),
        ListTile(
          leading: SvgPicture.asset(
            'assets/images/NOK.svg',
            width: 110,
          ),
          title: Text(
            rates['NOK'].toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          subtitle: Text('NOK/Norwegian Krone'),
          onTap: () {
            _homeBloc.targetResults('NOK');
          },
        ),
        ListTile(
          leading: SvgPicture.asset(
            'assets/images/NZD.svg',
            width: 110,
          ),
          title: Text(
            rates['NZD'].toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          subtitle: Text('NZD/New Zealand Dollar'),
          onTap: () {
            _homeBloc.targetResults('NZD');
          },
        ),
        ListTile(
          leading: SvgPicture.asset(
            'assets/images/ZAR.svg',
            width: 110,
          ),
          title: Text(
            rates['ZAR'].toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          subtitle: Text('ZAR/South African Rand'),
          onTap: () {
            _homeBloc.targetResults('ZAR');
          },
        ),
        ListTile(
          leading: SvgPicture.asset(
            'assets/images/MXN.svg',
            width: 110,
          ),
          title: Text(
            rates['MXN'].toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          subtitle: Text('MXN/Mexican Peso'),
          onTap: () {
            _homeBloc.targetResults('MXN');
          },
        ),
        ListTile(
          leading: SvgPicture.asset(
            'assets/images/SGD.svg',
            width: 110,
          ),
          title: Text(
            rates['SGD'].toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          subtitle: Text('SGD/Singapore Dollar'),
          onTap: () {
            _homeBloc.targetResults('SGD');
          },
        ),
        ListTile(
          leading: SvgPicture.asset(
            'assets/images/AUD.svg',
            width: 110,
          ),
          title: Text(
            rates['AUD'].toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          subtitle: Text('AUD/Australian Dollar'),
          onTap: () {
            _homeBloc.targetResults('AUD');
          },
        ),
        ListTile(
          leading: SvgPicture.asset(
            'assets/images/ILS.svg',
            width: 110,
          ),
          title: Text(
            rates['ILS'].toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          subtitle: Text('ILS/Israeli Shekel'),
          onTap: () {
            _homeBloc.targetResults('ILS');
          },
        ),
        ListTile(
          leading: SvgPicture.asset(
            'assets/images/KRW.svg',
            width: 110,
          ),
          title: Text(
            rates['KRW'].toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          subtitle: Text('KRW/South Korean Won'),
          onTap: () {
            _homeBloc.targetResults('KRW');
          },
        ),
        ListTile(
          leading: SvgPicture.asset(
            'assets/images/PLN.svg',
            width: 110,
          ),
          title: Text(
            rates['PLN'].toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          subtitle: Text('PLN/Polish Zloty'),
          onTap: () {
            _homeBloc.targetResults('PLN');
          },
        ),
      ],
    );
  }
}