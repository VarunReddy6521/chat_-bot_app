import 'package:flutter/material.dart';
import 'package:http/http.dart';

final List<String> _hostels = [
  'Hostel-Indrawati',
  'Hostel-Mahanadi',
  'Hostel-Sirpur',
  'PG Hostel',
  'Seonath',
  'Hostel-Mainput',
  'Hostel-Chitrakot',
  'Hostel-Malhar',
  'Hostel-Kotumsar'
];
var dr = _hostels.first;

class Format extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _branchController = TextEditingController();
  final TextEditingController _roomNoController = TextEditingController();
  final TextEditingController _phNoController = TextEditingController();
  final TextEditingController _RemarksController = TextEditingController();
  var arg;

  @override
  Widget build(BuildContext context) {
    arg = ModalRoute.of(context)?.settings.arguments;
    _login(
      TextEditingController nameController,
      TextEditingController emailController,
      TextEditingController phNoController,
      TextEditingController roomNoController,
      TextEditingController remarksController,
      String hostelName,
    ) async {
      print(hostelName);
      Response response = await post(
          Uri.parse('https://chatbothostel.onrender.com/complain'),
          body: {
            'name': nameController.text,
            'email': emailController.text,
            'phone': phNoController.text,
            'room': roomNoController.text,
            'comment': remarksController.text,
            'problem': arg.toString(),
            'hostel': hostelName
          });
      if (response.statusCode == 200) {
        print('rey epuraa');
      }
    }

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/new design2.png'), fit: BoxFit.fill)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(title: const Text('Format')),
          body: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.06),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 35, right: 35),
                      child: Column(children: [
                        TextField(
                          controller: _nameController,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                              hintText: "Name",
                              hintStyle: TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          controller: _emailController,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                              hintText: "Email",
                              hintStyle: TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          controller: _roomNoController,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                              hintText: "Room Number",
                              hintStyle: TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          controller: _phNoController,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                              hintText: "Phone Number",
                              hintStyle: TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          controller: _RemarksController,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 50, horizontal: 10),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                              hintText: "Remarks",
                              hintStyle: TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                        Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 50),
                            child: DropDownButtonExample()),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                            onPressed: () => _login(
                                _nameController,
                                _emailController,
                                _phNoController,
                                _roomNoController,
                                _RemarksController,
                                dr),
                            child: Text(
                              'Submit',
                              style: TextStyle(fontSize: 20),
                            )),
                      ]),
                    ),
                  ],
                )),
          )),
    );
  }
}

Widget _statement(int statusCode) {
  if (statusCode == 200) {
    return Container(
      child: Text('Your complain is successfully submitted'),
    );
  }
  return Container(
    child: Text('Failed to submit your complain'),
  );
}

class DropDownButtonExample extends StatefulWidget {
  const DropDownButtonExample({super.key});

  @override
  State<DropDownButtonExample> createState() => _DropDownButtonExampleState();
}

class _DropDownButtonExampleState extends State<DropDownButtonExample> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dr,
      icon: Icon(Icons.arrow_downward),
      borderRadius: BorderRadius.circular(10),
      items: _hostels.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? value) {
        setState(() {
          dr = value!;
        });
      },
    );
  }
}
