import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final titleController = TextEditingController();
  final valueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
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
                controller: titleController,
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
                controller: valueController,
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
                  textColor: Colors.purple,
                  child: Text('Nova transação'),
                  onPressed: () {
                    print(titleController.text);
                    print(valueController.text);
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
