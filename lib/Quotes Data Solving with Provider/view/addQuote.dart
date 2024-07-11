import 'package:adv_flutter_ch1/Quotes%20Data%20Solving%20with%20Provider/provider/quoteProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/QuotesModel.dart';

class NewQuotes extends StatelessWidget {
  const NewQuotes({super.key});

  @override
  Widget build(BuildContext context) {
    QuotesProvider quotesProviderTrue =
        Provider.of<QuotesProvider>(context, listen: true);
    QuotesProvider quotesProviderflase =
        Provider.of<QuotesProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Quotes App', style: TextStyle(fontSize: 20)),
        centerTitle: true,
      ),
      body: ListView.builder(
        reverse: true,
        itemCount: quotesProviderTrue.quoteNew.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(quotesProviderTrue.quoteNew[index].quote!),
              subtitle: Text(quotesProviderTrue.quoteNew[index].author!),
              trailing: InkWell(
                onTap: () {
                  quotesProviderflase.removequote(index);
                },
                  child: Icon(Icons.delete)),
            ),
          );
        }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          TextEditingController txtquote = TextEditingController();
          TextEditingController txtauthor = TextEditingController();
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('Add Quote'),
              content: Container(
                height: 120,
                child: Column(
                  children: [
                    TextField(
                      controller:txtquote,
                      decoration: InputDecoration(
                        label: Text('Quote')
                      ),
                    ),
                    TextField(
                      controller: txtauthor,
                      decoration: InputDecoration(
                          label: Text('Author')
                      ),
                    ),
                  ],
                ),
              ),
              actions: [
                TextButton(onPressed: () {
                  QuoteModel model = QuoteModel(
                    quote: txtquote.text,
                    author: txtauthor.text,
                  );
                  quotesProviderflase.newQuote(model);
                  Navigator.pop(context);
                }, child: Text('Sumit')),
                TextButton(onPressed: () {
                  Navigator.pop(context);
                }, child: Text('Cancle'))
              ],
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
