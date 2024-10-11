import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  var questionindex = 0;
  void answer() {
    setState(() {
        questionindex++;
    });
    const String a = 'Button Pressed ';
  
    print(a);
    print(questionindex);
  }

  @override
  Widget build(BuildContext context) {
    final List<String> questions = ['1', '2', '3'];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title:
                const Text('welcome to the App This is the first App of Mine '),
            backgroundColor: const Color.fromARGB(255, 1, 221, 255),
            foregroundColor: const Color.fromARGB(255, 255, 89, 0),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                  child: Text(
                questions[questionindex%questions.length],
                style: const TextStyle(fontSize: 50),
              )),
              ElevatedButton(
                onPressed: answer,
                child: const Text(
                  "option 1",
                  style: TextStyle(
                      fontSize: 26,
                      backgroundColor: Color.fromARGB(255, 0, 254, 174)),
                ),
              ),
              ElevatedButton(
                  onPressed: () => {
                        print('2nd Button Pressed'),
                      },
                  child: const Text("option 2")),
              ElevatedButton(
                  onPressed: () {
                    print('3rd Button Choosen');
                  },
                  child: const Text("option 3")),
            ],
          )),
    );
  }
}
