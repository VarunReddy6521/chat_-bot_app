import 'package:flutter/material.dart';
import 'package:http/http.dart';

class MySLogin extends StatefulWidget {
  @override
  State<MySLogin> createState() => _MySLoginState();
}

var response;

class _MySLoginState extends State<MySLogin> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _enrollmentidController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    void login(String enrollId, String password) async {
      print(enrollId );
      print(password);
      try {
        response = await post(Uri.parse('https://chatbothostel.onrender.com/login'), body: {
          'enrollmentnumber': enrollId,
          'password': password,
        });
        if (response.statusCode == 201) {
          // ignore: use_build_context_synchronously
          print('shiva');
          Navigator.pushReplacementNamed(context, 'splash');
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
                  TextField(
                    controller: _enrollmentidController,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Enrollment id',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Password',
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
                        onTap: () => login(_enrollmentidController.text,
                            _passwordController.text),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'register');
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 18,
                            color: Color(0xff4c505b),
                          ),
                        ),
                      ),
                      const TextButton(
                        onPressed: null,
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 18,
                            color: Color(0xff4c505b),
                          ),
                        ),
                      )
                    ],
                  )
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
