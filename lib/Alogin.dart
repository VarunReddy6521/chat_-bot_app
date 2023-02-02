import 'package:flutter/material.dart';
import 'package:http/http.dart';

class MyALogin extends StatefulWidget {
  @override
  State<MyALogin> createState() => _MyALoginState();
}

class _MyALoginState extends State<MyALogin> {


  @override
  Widget build(BuildContext context) {
    TextEditingController _keyController = TextEditingController();
      void login(String key) async {
      try {
        Response response =
            await post(Uri.parse('https://chatbothostel.onrender.com/admin'), body: {
          'key': key,
        });
        if (response.statusCode == 200) {
          Navigator.pushReplacementNamed(context, 'tasks');
        } else {
          print('failed to register');
        }
      } catch (e) {
        print(e.toString());
      }
    }
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/login.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            TweenAnimationBuilder(
              duration: const Duration(milliseconds: 1050),
              tween: Tween<double>(begin: 0, end: 1),
              builder: (BuildContext context, tween, Widget? child) {
                return Opacity(
                  opacity: tween,
                  child: Padding(
                    padding: EdgeInsets.only(top: tween * 50),
                    child: child,
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                child: Text(
                  'Welcome Back',
                  style: TextStyle(color: Colors.white, fontSize: 28),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5,
                    right: 35,
                    left: 35),
                child: Column(children: [
                  const SizedBox(
                    height: 30,
                  ),
                  TextField(
                    controller: _keyController,
                    obscureText: true,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'ENTER THE KEY',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Sign In',
                        style: TextStyle(
                            color: Color(0xff4c505b),
                            fontSize: 27,
                            fontWeight: FontWeight.w700),
                      ),
                      GestureDetector(
                        onTap: () => login(_keyController.text),
                        child: const CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xff4c505b),
                          child: IconButton(
                            onPressed: null,
                            icon:
                                Icon(Icons.arrow_forward, color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
