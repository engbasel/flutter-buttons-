import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(bottoms());
}

class bottoms extends StatelessWidget {
  const bottoms({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'data',
            style: TextStyle(
              color: Colors.amber,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FlatButton(
                onPressed: () {},
                child: Text(
                  'FlatButton',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              OutlinedButton(
                style: ButtonStyle(),
                onPressed: () {
                  print(
                    'hey im OutlinedButton',
                  );
                },
                child: Text(
                  'OutlinedButton',
                  style: TextStyle(
                    color: Colors.lightGreen,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              OutlinedButton(
                child: Text('OutlinedButton'),
                onPressed: () {
                  print('hey im OutlinedButton');
                },
              ),
              RaisedButton(
                color: Colors.grey,
                child: Text('RaisedButton'),
                onPressed: () {
                  print('hey im RaisedButton');
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.greenAccent),
                child: Text('ElevatedButton'),
                onPressed: () {
                  print('hey im ElevatedButton');
                },
                onLongPress: basel,
              ),
              // FloatingActionButton(
              //   BeveledRectangleBorder(
              //       borderRadius: BorderRadius.circular(
              //     10.0,
              //   )),
              //   child: Text('FloatingActionButton'),
              //   onPressed: () {
              //     print('hey im FloatingActionButton');
              //   },
              // ),
              FloatingActionButton(
                onPressed: () {
                  print('hey im FloatingActionButton');
                },
                child: Text('FloatingActionButton'),
              ),
              Container(
                width: 56.0,
                height: 56.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28.0),
                  border: Border.all(
                    width: 2.0,
                    color: Colors.blue,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(28.0),
                  child: FloatingActionButton(
                    onPressed: () {
                      // Add your button logic here
                    },
                    child: Text('Floating action button'),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.blue,
                  ),
                ),
              ),
              Container(
                width: 56.0,
                height: 56.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: FloatingActionButton(
                    onPressed: () {
                      // Add your button logic here
                    },
                    child: Text('Floating action button'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void basel() {}
