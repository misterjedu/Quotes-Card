import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List <Quote> quotes = [
    Quote(text: "One need not be a chamber to be haunted. One need not be a house. The brain has corridors surpassing material place.", author: "Jedu"),
    Quote(text:  "Monsters are real, ghosts are real too. They live inside us, and sometimes, they win.", author: "Mister"),
    Quote(text:  "Danger doesn’t lurk at every corner. It’s just hanging out, waiting for fear and horror to show up.", author: "Dapsy")

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
       appBar: AppBar(
         title: Text('Awesome Quotes'),
         centerTitle: true,
         backgroundColor: Colors.redAccent ,
       ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
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
