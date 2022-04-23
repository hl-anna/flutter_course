import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  // const TransactionList({Key? key}) : super(key: key);

  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: transactions.isEmpty
          ? Column(
              children: <Widget>[
                Text(
                  'No transactions added yet!',
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: 200,
                    child:
                        Image.asset('lib/assets/images/confusedtravolta.jpeg'))
              ],
            )
          : ListView.builder(
              itemBuilder: (ctx, index) {
                return Card(
                  elevation: 5,
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: FittedBox(
                            child: Text('£${transactions[index].amount}')),
                      ),
                    ),
                    title: Text(
                      transactions[index].title,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    subtitle: Text(
                        DateFormat.yMMMd().format(transactions[index].date)),
                    trailing: IconButton(
                      icon: Icon(Icons.delete_outline,
                          size: 20.0, color: Colors.grey[400]),
                      onPressed: () {
                        //   _onDeleteItemPressed(index);
                      },
                    ),
                  ),
                );
                //   return Card(
                //     child: Row(
                //       children: <Widget>[
                //         Container(
                //           padding: EdgeInsets.all(5),
                //           margin: EdgeInsets.symmetric(
                //             vertical: 10,
                //             horizontal: 5,
                //           ),
                //           decoration: BoxDecoration(
                //               border: Border.all(
                //             color: Theme.of(context).primaryColorLight,
                //             width: 2,
                //           )),
                //           child: Text(
                //             '£${transactions[index].amount.toStringAsFixed(2)}',
                //             style: TextStyle(
                //               fontWeight: FontWeight.bold,
                //               fontSize: 20,
                //               color: Theme.of(context).primaryColorDark,
                //             ),
                //           ),
                //         ),
                //         Column(
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: <Widget>[
                //             Text(transactions[index].title,
                //                 style: Theme.of(context).textTheme.headline6),
                //             Text(
                //               // DateFormat('yyyy/MM/dd').format(tx.date),
                //               DateFormat.yMMMMd()
                //                   .format(transactions[index].date),
                //               style: TextStyle(
                //                 color: Colors.grey,
                //               ),
                //             ),
                //           ],
                //         ),
                //       ],
                //     ),
                //   );
              },
              itemCount: transactions.length,
            ),
    );
  }
}
