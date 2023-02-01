import 'package:flutter/material.dart';

class BtnScreen extends StatelessWidget {
  const BtnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('./assets/login.png'), fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5,left: MediaQuery.of(context).size.width*0.35),
                decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).primaryColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.all(5),
                child: InkWell(
                  onTap: () => Navigator.pushReplacementNamed(context, 'Alogin'),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                    decoration:
                        BoxDecoration(color: Theme.of(context).primaryColor),
                    child: Text(
                      "Admin Login",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            SizedBox(
              height: 30,
            ),
            Container(
                margin: EdgeInsets.only(top: 20,left: MediaQuery.of(context).size.width*0.35),
                decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).primaryColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.all(5),
                child: InkWell(
                  onTap: () => Navigator.pushNamed(context, 'Slogin'),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                    decoration:
                        BoxDecoration(color: Theme.of(context).primaryColor),
                    child: Text(
                      "Student Login",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
