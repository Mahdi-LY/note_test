import 'package:flutter/material.dart';

import '../../route/approute.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageStae();
}

class _LoginpageStae extends State<Loginpage> {
  String? usernama, password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Login Page"),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text('Messages'),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
            ],
          ),
        ),
        body: Card(
          margin: const EdgeInsets.all(10),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(Icons.person, size: 80),
                TextField(
                  onChanged: (value) => usernama = value,
                ),
                const Padding(padding: EdgeInsets.only(bottom: 20.0)),
                TextField(
                  onChanged: (value) {
                    password = value;
                  },
                ),
                const Padding(padding: EdgeInsets.only(bottom: 50.0)),
                ElevatedButton(
                  onPressed: () {
                    if (usernama == "1" && password == "1") {
                      Navigator.pushNamed(context, AppRoute.notescreen);
                    } else {
                      _showMyDialog();
                    }
                  },
                  child: const Text("Login"),
                )
              ],
            ),
          ),
        ));
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Warring...'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('not found user name'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
