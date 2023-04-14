import 'package:flutter/material.dart';

class InputToken extends StatefulWidget {
  const InputToken({super.key});

  @override
  State<InputToken> createState() => _InputTokenState();
}

class _InputTokenState extends State<InputToken> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 10),
            margin: const EdgeInsets.only(top: 50, bottom: 30),
            child: Row(
              children: [
                IconButton(
                  color: const Color(0xFF323232),
                  icon: const Icon(
                    Icons.arrow_back,
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                const SizedBox(
                  width: 75,
                ),
                Image.asset("images/sova..png"),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(right: 55, left: 55),
            child: Column(
              children: [
                Title(
                  color: Colors.black, 
                  child: const Text(
                    'Input Token',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ),
                const SizedBox(height: 10),
                const Text(
                  'Enter the token you received to reset your password.',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(198, 201, 201, 200),
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 54,
                  width: 45,
                  padding: const EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: const TextField(
                    style: TextStyle(
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                Container(
                  height: 54,
                  width: 45,
                  padding: const EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: const TextField(
                    style: TextStyle(
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                Container(
                  height: 54,
                  width: 45,
                  padding: const EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: const TextField(
                    style: TextStyle(
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                Container(
                  height: 54,
                  width: 45,
                  padding: const EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: const TextField(
                    style: TextStyle(
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                Container(
                  height: 54,
                  width: 45,
                  padding: const EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: const TextField(
                    style: TextStyle(
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                Container(
                  height: 54,
                  width: 45,
                  padding: const EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: const TextField(
                    style: TextStyle(
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 300,
            height: 50,
            margin: const EdgeInsets.only(top: 40, bottom: 40),
            child: ElevatedButton(
              onPressed: () {}, 
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 0, 76, 255)),
              ),
              child: const Text('Submit'),
            ),
          ),
          Column(
            children: const <Widget>[
              Text(
                "Didn't receive an email?",
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(197, 163, 163, 163),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Resend',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 76, 255),
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}