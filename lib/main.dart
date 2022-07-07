import 'package:flutter/material.dart';
import './transation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter APP',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transation> Transations = [
    Transation(
      id: 't1',
      title: 'New Shoes',
      amount: 63.54,
      date: DateTime.now(),
    ),
    Transation(
      id: 't2',
      title: 'New Tees',
      amount: 50.52,
      date: DateTime.now(),
    ),
    Transation(
      id: 't3',
      title: 'New Bags',
      amount: 56,
      date: DateTime.now(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter APP',
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(10),
            color: Colors.blueAccent,
            child: Card(
              child: Text('Chart'),
            ),
          ),
          Column(
            children: Transations.map((tx) {
              return Card(
                child: Row(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        tx.amount.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            tx.title.toString(),
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            tx.date.toIso8601String(),
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
