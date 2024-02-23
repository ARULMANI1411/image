import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:image/model/fire.dart';
import 'package:image/share.dart';

import 'fire noti.dart';
import 'image.dart';

const AndroidNotificationChannel channel =AndroidNotificationChannel(

  'high_importence_channel',//id
  'High importence Notification',//title
  description: 'This channel is used important notification.',//description ',
  importance: Importance.high,
  playSound: true
);

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin=
FlutterLocalNotificationsPlugin();

Future<void> _firebaseMessageBackgroundHandler(RemoteMessage message) async{

  await Firebase.initializeApp();
  print("A big message just show up : ${message.messageId}");
}


    void main()  async{


  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseApi().initNottifications();
  // FirebaseMessaging.onBackgroundMessage(_firebaseMessageBackgroundHandler);
  //
  // await flutterLocalNotificationsPlugin.
  //     resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
  // ?.createNotificationChannel(channel);
  //
  //
  // await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
  //
  //   alert: true,
  //   badge: true,
  //   sound: true,
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: PickImage(),debugShowCheckedModeBanner: false,
    );
  }
}


