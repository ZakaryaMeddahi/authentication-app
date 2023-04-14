import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final _formKey = GlobalKey<FormState>();
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 62, bottom: 30),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
                          'Log In',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    const SizedBox(height: 10),
                    const Text(
                      'Log in to your account',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(198, 201, 201, 200),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Email*'),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 0, 76, 255),
                          ),
                          decoration: const InputDecoration(
                            labelText: 'Enter your email',
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 10)
                          ),
                          validator: (value) {
                            if (value!
                                .isEmpty /* || RegExp([\S]+$).hasMatch(value)*/) {
                              return 'Invalid email';
                            }
                          },
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Password*'),
                      ),
                      const SizedBox(height: 5),
                      SizedBox(
                        child: TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 0, 76, 255),
                          ),
                          decoration: const InputDecoration(
                            labelText: 'Enter your password',
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 10),
                          ),
                          validator: (value) {
                            if (value!.isEmpty ||
                                value.length < 8 ||
                                value.length < 14) {
                              return 'Invalid password';
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        child: Row(
                          children: [
                            SizedBox(
                              height: 25,
                              width: 25,
                              child: Checkbox(
                                  value: _value,
                                  onChanged: (value) {
                                    setState(() {
                                      if (_value == false)
                                        _value = true;
                                      else
                                        _value = false;
                                    });
                                  }),
                            ),
                            const SizedBox(width: 5),
                            const Text('Remember Me'),
                            const Spacer(),
                            const Text(
                              'Forgot Password?',
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 76, 255),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Container(
                width: 300,
                height: 50,
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // ScaffoldMessenger.of(context).showSnackBar(
                      //   const SnackBar(content: Text('Processing Data')),
                      // );
                    }
                  },
                  style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Color.fromARGB(255, 0, 76, 255)),
                  ),
                  child: const Text('Log in'),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: Color.fromARGB(197, 128, 127, 127),
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 76, 255),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
      )
    );
  }
}
