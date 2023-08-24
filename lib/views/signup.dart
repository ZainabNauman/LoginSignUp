import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../widgets/custombutton.dart';
import '../widgets/customfieldtextpassword.dart';
import '../widgets/customtextfiels.dart';
import 'HomePage.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final nameTfController = TextEditingController();
  final emailTfController = TextEditingController();
  final passwordTfController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //var widget;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Create Account"),
            centerTitle: true,
            backgroundColor: Colors.brown,
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              const Text(
                "Create Account",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              const Text(
                "Enter Your Full Name,Email and Password to sign up.",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
              ),
              const SizedBox(height: 5),
              CustomTextField(
                  hint: Elements.name,
                  label: Elements.nameLabel,
                  controller: nameTfController),
              const SizedBox(height: 5),
              CustomTextField(
                  hint: Elements.email,
                  label: Elements.emailLabel,
                  controller: emailTfController),
              const SizedBox(height: 5),
              CustomTextFieldPassword(
                controller: passwordTfController,
                hint: Elements.password,
                label: Elements.passwordLabel,
              ),
              const SizedBox(height: 10),
              CustomButton(
                  color: Colors.white,
                  text: 'Sign up',
                  onTap: () {
                    if (nameTfController.text.trim().isEmpty ||
                        !RegExp(Elements.namepattern)
                            .hasMatch(nameTfController.text)) {
                      showpopup(
                          context, 'Alert', 'Insert Valid Name Credential');
                    } else if (emailTfController.text.trim().isEmpty ||
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
                      tapsignupbutton(context);
                    }
                  }),
              const SizedBox(height: 10),
              const Text(
                "By signing up you agree to our Terms Condition & Privacy Policy.",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w200),
              ),
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

  void tapsignupbutton(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => HomePage(
                title: "From Sign Up Page",
              )),
    );
  }
}
