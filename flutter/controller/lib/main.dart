import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// http://192.168.43.171:8000/space
Future<Map<String, dynamic>> space_clicked( String token) async {
  var url = 'http://$token:8000/space';
  print(url);
//  var body = jsonEncode({
//    "username": username,
//    "password": password,
//    "api_type": "app",
//    "pkey": ""
//  });

  //print("Body: " + body);

  var response = await http.get(Uri.parse(url),
      // headers: {
    //       //   "Accept": "application/json",
    //       //   "Access-Control-Allow-Origin": "*",
    //       // }
    // headers: {
    //   "Access-Control-Allow-Origin": "*", // Required for CORS support to work
    //   "Access-Control-Allow-Credentials": true, // Required for cookies, authorization headers with HTTPS
    //   "Access-Control-Allow-Headers": "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
    //   "Access-Control-Allow-Methods": "POST, OPTIONS"
    // },
    // headers: {"accept": "application/json","Content-Type": "application/json-patch+json","Authorization":token},
//      body: body
  );
  print(response.body);
  return json.decode(response.body);
}


Future<Map<String, dynamic>> arrow_clicked( String token,String first) async {
  var url = 'http://$token:8000/$first';
  print(url);
//  var body = jsonEncode({
//    "username": username,
//    "password": password,
//    "api_type": "app",
//    "pkey": ""
//  });

  //print("Body: " + body);

  var response = await http.get(Uri.parse(url),
    // headers: {
    //       //   "Accept": "application/json",
    //       //   "Access-Control-Allow-Origin": "*",
    //       // }
    // headers: {
    //   "Access-Control-Allow-Origin": "*", // Required for CORS support to work
    //   "Access-Control-Allow-Credentials": true, // Required for cookies, authorization headers with HTTPS
    //   "Access-Control-Allow-Headers": "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
    //   "Access-Control-Allow-Methods": "POST, OPTIONS"
    // },
    // headers: {"accept": "application/json","Content-Type": "application/json-patch+json","Authorization":token},
//      body: body
  );
  print(response.body);
  return json.decode(response.body);
}
Future<Map<String, dynamic>> send_string( String token,String string) async {
  var url = 'http://$token:8000/string/$string';
  print(url);
//  var body = jsonEncode({
//    "username": username,
//    "password": password,
//    "api_type": "app",
//    "pkey": ""
//  });

  //print("Body: " + body);

  var response = await http.get(Uri.parse(url),
    // headers: {
    //       //   "Accept": "application/json",
    //       //   "Access-Control-Allow-Origin": "*",
    //       // }
    // headers: {
    //   "Access-Control-Allow-Origin": "*", // Required for CORS support to work
    //   "Access-Control-Allow-Credentials": true, // Required for cookies, authorization headers with HTTPS
    //   "Access-Control-Allow-Headers": "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
    //   "Access-Control-Allow-Methods": "POST, OPTIONS"
    // },
    // headers: {"accept": "application/json","Content-Type": "application/json-patch+json","Authorization":token},
//      body: body
  );
  print(response.body);
  return json.decode(response.body);
}


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  // final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String ip="";
  String keys="";
  TextEditingController ip_field=TextEditingController();
  TextEditingController keys_field=TextEditingController();
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     // This call to setState tells the Flutter framework that something has
  //     // changed in this State, which causes it to rerun the build method below
  //     // so that the display can reflect the updated values. If we changed
  //     // _counter without calling setState(), then the build method would not be
  //     // called again, and so nothing would appear to happen.
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Controller"),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Padding(
        padding: const EdgeInsets.all(8.0),
        child: ButtonTheme(
          minWidth: double.infinity,
          height: 50.0,
          child:
            TextField(

              controller: ip_field,

              decoration: InputDecoration(
                label: Text("IP:"),
                suffixIcon: IconButton(
                    icon:Icon(Icons.star,),
                    onPressed: (){
                      ip=ip_field.text;
                    },

                ),
              ),

            ),
        )
        ),
        Padding(
                padding: const EdgeInsets.all(8.0),
                child: ButtonTheme(
                  minWidth: double.infinity,
                  height: 50.0,
                  child:
                  TextField(

                    controller: keys_field,

                    decoration: InputDecoration(
                      label: Text("another keys:"),
                      suffixIcon: IconButton(
                        icon:Icon(Icons.send,),
                        onPressed: ()async{
                          await send_string(ip,keys_field.text);
                          // keys_field.clear();
                        },

                      ),
                    ),

                  ),
                )
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ButtonTheme(
                minWidth: double.infinity,
                height: 50.0,
                child: Row(
                  // mainAxisAlignment : MainAxisAlignment.spaceAround,
                  
                  children: [
                  Expanded(
                      child: ElevatedButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:const [
                            Text("Left"),
                            Icon(Icons.keyboard_arrow_left,color: Colors.deepOrangeAccent,)
                          ],
                        ),
                        onPressed: ()async{
                          print("das");
                          await arrow_clicked(ip,'left');
                          // space_clicked('f');
                        },

                      ),
                    ),
                    // Spacer(),
                    Expanded(child:ElevatedButton(
                      child: Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children:const [
                          Text("Right"),
                          Icon(Icons.keyboard_arrow_right,color: Colors.deepOrangeAccent,)
                        ],
                      ),
                      onPressed: ()async{
                        print("das");
                        await arrow_clicked(ip,'right');
                        // space_clicked('f');
                      },

                    )),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ButtonTheme(
                minWidth: double.infinity,
                height: 50.0,
                child: ElevatedButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:const [
                      Text("Space"),
                      Icon(Icons.pause,color: Colors.deepOrangeAccent,)
                    ],
                  ),
                  onPressed: ()async{
                    print("das");
                    await space_clicked(ip);
                    // space_clicked('f');
                  },

                ),
              ),
            ),

            // const Text(
            //   'You have pushed the button this many times:',
            // ),
            // Text(
            //   '$_counter',
            //   style: Theme.of(context).textTheme.headline4,
            // ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
