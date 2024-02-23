



import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseApi{

  final _firebaseMessaging= FirebaseMessaging.instance;
  Future<void> initNottifications() async{

    await _firebaseMessaging.requestPermission();
    final fCMToken=await _firebaseMessaging.getToken();
    print("TOKEN:$fCMToken");


  }
}