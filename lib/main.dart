/*
import 'package:bloc/bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:safedrive/app/app_texts.dart';
import 'package:safedrive/bloc_observer.dart';
import 'package:safedrive/domain/models/emergency_model.dart';
import 'package:safedrive/screens/myapp.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  print('Handling a background message: ${message.messageId}');
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  await Hive.initFlutter();
  Bloc.observer = MyBlocObserver();
  Hive.registerAdapter(EmergencyModelAdapter());
  await Hive.openBox<EmergencyModel>(
    AppText.emergencyBox,
  );

  FirebaseMessaging messaging = FirebaseMessaging.instance;
  NotificationSettings settings = await messaging.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );


  print('User granted permission: ${settings.authorizationStatus}');

  runApp(
    const MyApp(),
  );
}
*/


import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:safedrive/app/app_texts.dart';
import 'package:safedrive/bloc_observer.dart';
import 'package:safedrive/domain/models/emergency_model.dart';
import 'package:safedrive/screens/myapp.dart';
import 'domain/models/emergency_model2.dart';
import 'firebase_options.dart';
import 'package:workmanager/workmanager.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
FlutterLocalNotificationsPlugin();

void callbackDispatcher() {
  Workmanager().executeTask((task, inputData) async {
    await Firebase.initializeApp();
    return Future.value(true);
  });
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  const AndroidInitializationSettings initializationSettingsAndroid =
  AndroidInitializationSettings('@mipmap/ic_launcher');

  final InitializationSettings initializationSettings =
  InitializationSettings(android: initializationSettingsAndroid);

  await flutterLocalNotificationsPlugin.initialize(initializationSettings);

  await Hive.initFlutter();
  Bloc.observer = MyBlocObserver();
  Hive.registerAdapter(EmergencyModelAdapter());
  await Hive.openBox<EmergencyModel>(
    AppText.emergencyBox,
  );
  //Hive.registerAdapter(EmergencyModel2Adapter());

  Workmanager().initialize(callbackDispatcher, isInDebugMode: true);

  runApp(
    const MyApp(),
  );
}
