import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 80),
            alignment: Alignment.center,
            child: const Image(image: AssetImage('images/bigSova..png')),
          ),
          Container(
            margin: const EdgeInsets.only(top: 40),
            alignment: Alignment.center,
            child: const Image(image: AssetImage('images/Frame.png')),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            width: 300,
            child: Column(
              children: [
                Title(
                  color: Colors.black, 
                  child: const Text(
                    'Welcome to Sova',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 76, 255),
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ),
                const SizedBox(height: 10),
                const Text(
                  'Get comparative estimation on what’s the industry norm of the real states.',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(198, 201, 201, 200),
                  ),
                  textAlign: TextAlign.center,
                ),
              ]
            ),
          ),
          Container(
            width: 300,
            height: 50,
            margin: const EdgeInsets.only(top: 45, bottom: 10),
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromARGB(255, 0, 76, 255),
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: ElevatedButton(
              onPressed: () {}, 
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 255, 255, 255)),
                foregroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 0, 76, 255)),
              ),
              child: const Text('Log in'),
            ),
          ),
          Container(
            width: 300,
            height: 50,
            margin: const EdgeInsets.only(top: 10, bottom: 10),
            child: ElevatedButton(
              onPressed: () {}, 
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 0, 76, 255)),
              ),
              child: const Text('Log in'),
            ),
          ),
        ],
      ),
    );
  }
}