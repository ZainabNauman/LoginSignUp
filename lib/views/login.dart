import 'package:flutter/material.dart';
import 'package:flutter_project1/views/forgetpasswordpage.dart';
import '../widgets/custombutton.dart';
import '../widgets/customfieldtextpassword.dart';
import '../widgets/customtextfiels.dart';
import '../utils/constants.dart';
import 'HomePage.dart';

class LoginScreen extends StatelessWidget {
  final String title;
  LoginScreen({super.key, required this.title});
  var emailTfController = TextEditingController();
  var passwordTfController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Login Page"),
            centerTitle: true,
            backgroundColor: Colors.brown,
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              const SizedBox(height: 50),
              const Text(
                "Welcome Back!!",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.normal,
                    color: Colors.red),
              ),
              const Text(
                "Login to your Account",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(height: 30),
              CustomTextField(
                  hint: Elements.email,
                  label: Elements.emailLabel,
                  controller: emailTfController),
              const SizedBox(height: 10),
              CustomTextFieldPassword(
                controller: passwordTfController,
                hint: Elements.password,
                label: Elements.passwordLabel,
              ),

              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white10,
                  ),
                  onPressed: () {
                    tapforgetpasswordbutton(context);
                  },
                  child: const Text(
                    "forget password?",
                    selectionColor: Colors.lightBlue,
                    style: TextStyle(fontSize: 10),
                  ),
                ),
              ),
              // ),
              const SizedBox(
                height: 5,
              ),
              CustomButton(
                  color: Colors.white,
                  text: 'Login',
                  onTap: () {
                    if (emailTfController.text.trim().isEmpty ||
                        !RegExp(Elements.emailpattern)
                            .hasMatch(emailTfController.text) ||
                        emailTfController.text.length < 11) {
                      showpopup(
                          context, 'Alert', 'Insert Valid Email Credential');
                    } else if (passwordTfController.text.trim().isEmpty ||
                        passwordTfController.text.length < 8) {
                      showpopup(
                          context, 'Alert', 'Insert Valid Password Credential');
                    } else {
                      taploginbutton(context);
                    }
                  }),
              // Align(
              //   alignment: Alignment.bottomRight,
              //   child: CustomButton(
              //       color: Colors.blue,
              //       text: 'Login',
              //       width: 200,
              //       //alignment: Alignment.centerLeft,
              //       onTap: () {
              //         if (emailTfController.text.trim().isEmpty ||
              //             !RegExp(Elements.emailpattern)
              //                 .hasMatch(emailTfController.text) ||
              //             emailTfController.text.length < 11) {
              //           showpopup(
              //               context, 'Alert', 'Insert Valid Email Credential');
              //         } else if (passwordTfController.text.trim().isEmpty ||
              //             passwordTfController.text.length < 8) {
              //           showpopup(context, 'Alert',
              //               'Insert Valid Password Credential');
              //         } else {
              //           taploginbutton(context);
              //         }
              //       }),
              //)
            ]),
          ),
        ));
  }

  void showpopup(BuildContext context, String title, String message) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: Text(message),
          );
        });
  }

  void taploginbutton(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => HomePage(title: "From Login page")),
    );
  }

  void tapforgetpasswordbutton(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ForgetPasswordScreen()),
    );
  }
}
