import 'package:emptytablet/game_lobby.dart';
import 'package:emptytablet/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart';

import 'new_game_page.dart';

Socket? socket;

@override
void initState() {
  connectToServer();
}

void connectToServer() {
  try {
    // Configure socket transports must be specified
    socket = io('http://127.0.0.1:3000', <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': false,
    });

    // Connect to websocket
    socket!.connect();

    // Handle socket events
    socket!.on('connect', (_) => print('connect: ${socket!.id}'));
    socket!.on('disconnect', (_) => print('disconnect'));
    socket!.on('fromServer', (_) => print(_));
  } catch (e) {
    print(e.toString());
  }
}

// Send Location to Server
sendLocation(Map<String, dynamic> data) {
  socket!.emit("location", data);
}

// Listen to Location updates of connected usersfrom server
handleLocationListen(Map<String, dynamic> data) async {
  print(data);
}

// Send update of user's typing status
sendTyping(bool typing) {
  socket!.emit("typing", {
    "id": socket!.id,
    "typing": typing,
  });
}

// Listen to update of typing status from connected users
void handleTyping(Map<String, dynamic> data) {
  print(data);
}

// Send a Message to the server
sendMessage(String message) {
  socket!.emit(
    "message",
    {
      "id": socket!.id,
      "message": message, // Message to be sent
      "timestamp": DateTime.now().millisecondsSinceEpoch,
    },
  );
}

// Listen to all message events from connected users
void handleMessage(Map<String, dynamic> data) {
  print(data);
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/d': (context) => MyHomePage(title: "Empty Tablet"),
        '/new': (context) => NewGame(),
        '/': (context) => GameLobbyPage()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
            LandingPage() // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
