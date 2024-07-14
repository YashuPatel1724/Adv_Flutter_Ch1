
import 'package:flutter/material.dart';
class QuoteModel
{
  String? quote;
  String? author;
  QuoteModel({this.quote, this.author});

  factory QuoteModel.from(Map m1)
  {
    return QuoteModel(quote: m1['quote'] , author: m1['author']);
  }
}