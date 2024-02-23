// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:image/main.dart';
// class noti extends StatefulWidget {
//   const noti({super.key});
//
//   @override
//   State<noti> createState() => _notiState();
// }
//
// class _notiState extends State<noti> {
//
//   @override
//   void initState(){
//     super.initState();
//     FirebaseMessaging.onMessage.listen((RemoteMessage message) {
//       RemoteNotification? notification=message.notification;
//       AndroidNotification? android =message.notification?.android;
//       if (notification!=null&& android!=null){
//         flutterLocalNotificationsPlugin.show(
//           notification.hashCode,
//           notification.title,
//           notification.body,
//             NotificationDetails(
//             android: AndroidNotificationDetails(
//              channel.id,
//              channel.name,
//             channel.description,
//               color: Colors.cyanAccent,
//               playSound: true,
//               icon: "@mipmap/ic_launcher",
//             )
//         ),
//         );
//       }
//     });
//     FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
//       print('A new onMessageOpen App event was pupluishd');
//       RemoteNotification? notification=message.notification;
//       AndroidNotification? android=message.notification?.android;
//       if(notification!=null&&android!=null){
//
//         showDialog(context: context,
//             builder:(_){
//           return AlertDialog(
//             title: Text(notification.title.toString()),
//             content: SingleChildScrollView(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(notification.body.toString())
//
//                 ],
//               ),
//             ),
//           );
//             });
//       }
//     });
//   }
//
//   void showNotifivcation(){
//
//     flutterLocalNotificationsPlugin.show(
//        0,
//         "hai",
//
//       NotificationDetails(
//         android: AndroidNotificationDetails(
//           channel.id,
//           channel.name,
//
//
//           importance: Importance.high,
//           color: Colors.cyanAccent,
//           playSound: true,
//           icon: "@mipmap/ic_launcher"
//         )
//       ) as String?
//     );
//
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(child: ElevatedButton(onPressed: showNotifivcation
//
//
//       , child: Text("notification"),),),
//
//     );
//   }
// }
