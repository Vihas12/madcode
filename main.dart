exp-1
import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(
        child: Text("Hello World",
        style: TextStyle(fontSize: 25),
        ),
      ),
  ),
  ),
  );
}



exp2
import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("welcome"),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.red,
                child: const Text("Hello World"),
              ),
              Container(
                color: Colors.green,
                child: const Text("Hello World"),
              ),
              Container(
                color: Colors.blue,
                child: const Text("Hello World"),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}



exp3
import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String title = 'Form App';
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: title,
        home: Scaffold(
          appBar: AppBar(title: const Text(title)),
          body: MyCustomForm(),
        ),
      );
}

class MyCustomForm extends StatefulWidget {
  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) => Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(labelText: 'Enter your full name'),
              validator: (value) => value?.isEmpty ?? true ? 'Please enter some text' : null,
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Enter your phone number'),
              validator: (value) =>
                  value?.isEmpty ?? true ? 'Please enter some text' : value!.length == 10 ? null : 'Please enter 10 digit phone number',
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Enter your date of birth'),
              validator: (value) => value?.isEmpty ?? true ? 'Please enter some text' : null,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Processing Data')));
                  }
                },
                child: const Text('Submit'),
              ),
            ),
          ],
        ),
      );
}


exp4
import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: const Text('Red Box Example')),
          body: SingleChildScrollView(
            child: Container(
              color: Colors.red,
              width: double.infinity,
              height: 1200, // Large height to demonstrate scrolling
              child: const Center(child: Text('Red Box', style: TextStyle(color: Colors.white, fontSize: 30))),
            ),
          ),
        ),
      );
}



exp5



exp6,7
import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String title = 'Flutter Image Chart Icon Exp!';

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: title,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: MyIconPage(),
      );
}

class MyIconPage extends StatefulWidget {
  @override
  State<MyIconPage> createState() => _MyIconPageState();
}

class _MyIconPageState extends State<MyIconPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Flutter Icon Tutorial')),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(children: [
                    const Icon(Icons.camera_front, size: 70),
                    const Text('Front Camera'),
                  ]),
                  Column(children: [
                    const Icon(Icons.camera_enhance, size: 70),
                    const Text('Camera'),
                  ]),
                  Column(children: [
                    const Icon(Icons.camera_rear, size: 70),
                    const Text('Rear Camera'),
                  ]),
                ],
              ),
            ),
          ],
        ),
      );
}


class _MyIconPageState extends State<MyIconPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Flutter Icon Tutorial')),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Icon(Icons.favorite, size: 70, color: Colors.black),
            const Icon(Icons.inbox, size: 70, color: Colors.black),
            const Icon(Icons.camera_rear, size: 70, color: Colors.black),
            Image.network('https://images.pexels.com/photos/178811/pexels-photo-178811.jpeg?auto=compress&cs=tinysrgb&w=600'),
          ],
        ),
      );
}

exp9
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    title: 'Flutter Navigation',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
            );
          },
          child: Text('Click Here'),
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go Back'),
        ),
      ),
    );
  }
}

exp10
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Gestures Example'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            print('Container clicked!');
          },
          child: Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
            ),
            child: const Center(child: Text('Click Me')),
          ),
        ),
      ),
    ),
  ));
}


import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String title = 'Flutter Code Exp!';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  double _currentValue = 0.2;

  @override
  Widget build(BuildContext context) {
    final EdgeInsets systemGestureInsets = MediaQuery.of(context).systemGestureInsets;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pad Slider to avoid System Gesture Insets'),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: systemGestureInsets.left,
          right: systemGestureInsets.right,
        ),
        child: Slider(
          value: _currentValue,
          onChanged: (double newValue) {
            setState(() {
              _currentValue = newValue;
            });
          },
        ),
      ),
    );
  }
}