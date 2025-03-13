import 'package:cs_ai/Home_page.dart';
import 'package:cs_ai/update_checker.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  checkForUpdates();
  runApp(Home_page());
}
