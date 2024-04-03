import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:safedrive/app/app_texts.dart';
import 'package:safedrive/bloc_observer.dart';
import 'package:safedrive/domain/models/emergency_model.dart';
import 'package:safedrive/screens/myapp.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = MyBlocObserver();
  Hive.registerAdapter(EmergencyModelAdapter());
  await Hive.openBox<EmergencyModel>(AppText.emergencyBox);

  runApp(
    const MyApp(),
  );
}
