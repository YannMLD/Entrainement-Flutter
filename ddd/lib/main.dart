import 'package:ddd/injection.dart';
import 'package:ddd/presentation/core/app_widget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  configureInjection(Environment.prod);
  await Firebase.initializeApp();

  runApp(AppWidget());
}
