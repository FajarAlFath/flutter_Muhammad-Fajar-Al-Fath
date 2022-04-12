import 'package:flutter/material.dart';
import 'dart:io';

class Data extends ChangeNotifier {
  final String id;
  final File cover;
  final String caption;
  final String date;
  final Color color;

  Data({
    required this.caption,
    required this.color,
    required this.cover,
    required this.date,
    required this.id,
  });
}
