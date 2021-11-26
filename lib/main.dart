import 'package:cakapp/TataTertib/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cakapp/shared/navbk.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context){
    return FutureBuilder(
      future: _initialization,
        builder: (context, snapshot){
        if(snapshot.hasError){
          print("Something went Wrong");
        }
        if(snapshot.connectionState == ConnectionState.done){
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.red,
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            home: MyHomePage(),
          );
        }
        return CircularProgressIndicator();
        },
      );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('SMK TELKOM PURWOKERTO'),
      ),
      body: Center(),
    );
  }
}