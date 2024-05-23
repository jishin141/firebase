import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_database_application/provider/login_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final nameController = TextEditingController();
    final numberController = TextEditingController();
    final loginProvider = Provider.of<LoginProvider>(context);
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('asset/image/3409297.jpg'),
                fit: BoxFit.cover),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.blue.shade800,
                  Colors.blue.shade700,
                  Colors.blue.shade300,
                  Colors.blue.shade400,
                  Colors.blue.shade300,
                  Colors.blue.shade700,
                  Colors.blue.shade800,
                ])),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 200,
                child: Text(
                  'LogIn',
                  style: GoogleFonts.protestRiot(fontSize: height * 0.1),
                ),
              ),
              // Image.asset(
              //   'asset/image/3409297.jpg',
              //   fit: BoxFit.cover,
              // ),
              SizedBox(
                width: 300,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 241, 241, 241),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(.0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: nameController,
                            decoration: InputDecoration(
                                hintText: 'Enter your Name',
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 300,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 241, 241, 241),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: numberController,
                        decoration: InputDecoration(
                            hintText: 'Enter your Phone Number',
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 300,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 241, 241, 241),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                            hintText: 'Enter your Email',
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 300,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 241, 241, 241),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: passwordController,
                        decoration: InputDecoration(
                            hintText: 'Enter your password',
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () async {
                    final String email = emailController.text.trim();

                    final String password = passwordController.text.trim();
                    final String name = nameController.text.trim();
                    final String number = numberController.text.trim();

                    await loginProvider.createUser(
                        email: email,
                        password: password,
                        name: name,
                        mobileNumber: number);
                  },
                  child: Text('Submit'))
            ],
          ),
        ),
      ),
    );
  }
}
// added comments
// added second commit 
// added third commits 
//added in second branch
// git m
//idyt
//cc

