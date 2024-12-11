import 'package:flutter/material.dart';
import 'package:app_launcher/app.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const App());
}
