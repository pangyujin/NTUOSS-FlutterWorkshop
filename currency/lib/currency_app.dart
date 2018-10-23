import 'package:flutter/material.dart';
import 'package:currency/dbHelper.dart';
import 'package:currency/form_field.dart';
import 'package:currency/slider_wrapper.dart';

class CurrencyApp extends StatefulWidget {
  @override
  _CurrencyAppState createState() => _CurrencyAppState();
}

class _CurrencyAppState extends State<CurrencyApp> {
  DatabaseHelper database;

  @override
  void initState() {
    super.initState();
    database = DatabaseHelper();
  }

  @override
  void dispose() {
    database.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Currency'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          children: <Widget>[
            Flexible(
              child: SliderWrapper(),
            ),
            Divider(),
            InputField(
              database: database,
            ),
          ],
        ),
      ),
    );
  }
}
