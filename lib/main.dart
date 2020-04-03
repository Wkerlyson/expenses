import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Novo tênis de corrida',
      value: 310.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Conta de Luz',
      value: 211.30,
      date: DateTime.now(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Despesas Pessoais'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            child: Card(
              margin: EdgeInsets.all(10),
              color: Colors.grey[150],
              elevation: 0,
              child: Text('Gráfico'),
            ),
          ),
          Column(
            children: _transactions.map((tr) {
              return Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.purple[50], width: 2),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'R\$ ${tr.value.toStringAsFixed(2)}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.purple),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          tr.title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          DateFormat('d MMM y').format(tr.date),
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    )
                  ],
                ),
              );
            }).toList(),
          ),
          Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey.shade100,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Título',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(10),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey.shade100,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Valor (R\$)',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(10),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      FlatButton(
                        onPressed: () {},
                        textColor: Colors.purple,
                        child: Text('Nova transação'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
