import 'package:flutter/material.dart';

void customSnackBar(BuildContext context, String url) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(url)));
}
