import 'package:flutter/material.dart';
import 'package:flutter_project1/utils/constants.dart';
import 'package:flutter_project1/views/login.dart';
import 'package:flutter_project1/widgets/customfieldtextpassword.dart';

import '../widgets/custombutton.dart';

class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({super.key});
  final oldpassswordTfController = TextEditingController();
  final newpasswordTfController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Reset Password"),
          centerTitle: true,
          backgroundColor: Colors.brown,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            const SizedBox(height: 50),
            const Text(
              "From previous used password",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: 15),
            CustomTextFieldPassword(
                controller: oldpassswordTfController,
                hint: Elements.password,
                label: Elements.passwordLabel),
            const SizedBox(height: 10),
            CustomTextFieldPassword(
                controller: newpasswordTfController,
                hint: Elements.password,
                label: Elements.passwordLabel),
            const SizedBox(height: 10),
            CustomButton(
              color: Colors.white,
              text: 'Reset Password',
              onTap: () {
                if (oldpassswordTfController.text.trim().isEmpty ||
                    oldpassswordTfController.text.length < 8) {
                  showpopup(
                      context, 'Alert', 'Insert Valid Password Credential');
                } else if (newpasswordTfController.text.trim().isEmpty ||
                    newpasswordTfController.text.length < 8) {
                  showpopup(
                      context, 'Alert', 'Insert Valid New Password Credential');
                } else {
                  tapresetpasswordbutton(context);
                }
              },
            ),
          ]),
        ),
      ),
    );
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

  void tapresetpasswordbutton(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen(title: "")),
    );
  }
}
