import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home:Quotes(),
  ));
}

class Quotes extends StatefulWidget {
  const Quotes({Key? key}) : super(key: key);

  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  List<Quote> quotes = [
    Quote(text: 'Kabiesi', author: 'Bi a ko ba reni abrin bi ole lari'),
    Quote(text: 'Kabiesi1', author: 'Ajanaku koja mo ri nkan firi'),
    Quote(text: 'Kabiesi2', author: 'Ori la fin mu eran lawo'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(quote: quote,
        delete: (){
          setState(() {
            quotes.remove(quote);
          });
        }
        )).toList(),
      ),
    );
  }
}




