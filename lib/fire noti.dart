//
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
//
// import 'main.dart';
//
//
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, this.title}) : super(key: key);
//
//   final String? title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   @override
//   void initState() {
//     super.initState();
//     FirebaseMessaging.onMessage.listen((RemoteMessage message) {
//       RemoteNotification? notification = message.notification;
//       AndroidNotification? android = message.notification?.android;
//       if (notification != null && android != null) {
//         flutterLocalNotificationsPlugin.show(
//             notification.hashCode,
//             notification.title,
//             notification.body,
//             NotificationDetails(
//               android: AndroidNotificationDetails(
//                 channel.id,
//                 channel.name,
//                 channelDescription: channel.description,
//                 color: Colors.blue,
//                 playSound: true,
//                 icon: '@mipmap/ic_launcher',
//               ),
//             ));
//       }
//     });
//
//     FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
//       print('A new onMessageOpenedApp event was published!');
//       RemoteNotification? notification = message.notification;
//       AndroidNotification? android = message.notification?.android;
//       if (notification != null && android != null) {
//         showDialog(
//             context: context,
//             builder: (_) {
//               return AlertDialog(
//                 title: Text(notification.title!),
//                 content: SingleChildScrollView(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [Text(notification.body!)],
//                   ),
//                 ),
//               );
//             });
//       }
//     });
//   }
//
//   void showNotification() {
//     setState(() {
//      _counter++;
//     });
//     flutterLocalNotificationsPlugin.show(
//         0,
//         "Testing $_counter",
//         "How you doin ?",
//         NotificationDetails(
//             android: AndroidNotificationDetails(channel.id, channel.name,
//                 channelDescription: channel.description,
//                 importance: Importance.high,
//                 color: Colors.blue,
//                 playSound: true,
//                 icon: '@mipmap/ic_launcher')));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title!),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: showNotification,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
