import 'package:flutter/material.dart';
import 'package:flutter_project1/views/resetpassword.dart';
import '../utils/constants.dart';
import '../widgets/custombutton.dart';
import '../widgets/customtextfiels.dart';

class ForgetPasswordScreen extends StatelessWidget {
  ForgetPasswordScreen({super.key});
  final forgetemailTfController = TextEditingController();
  //String pattern = "^[a-zA-Z0-9+_.-]+@gmail.com";
  @override
  Widget build(BuildContext context) {
    //var widget;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Forget Password"),
            centerTitle: true,
            backgroundColor: Colors.brown,
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Forget Your Password??",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                    color: Colors.blue),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Enter Email Address associated with your Account",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextField(
                  hint: Elements.email,
                  label: Elements.emailLabel,
                  controller: forgetemailTfController),
              const SizedBox(
                height: 15,
              ),
              CustomButton(
                  color: Colors.white,
                  text: 'Login',
                  onTap: () {
                    if (forgetemailTfController.text.trim().isEmpty ||
                        !RegExp(Elements.emailpattern)
                            .hasMatch(forgetemailTfController.text) ||
                        forgetemailTfController.text.length < 11) {
                      showpopup(
                          context, 'Alert', 'Insert Valid Email Credential');
                    } else {
                      tapverifyemailbutton(context);
                    }
                  })
              // SizedBox(
              //     height: 50,
              //     width: 350,
              //     child: ElevatedButton(
              //       onPressed: () {
              //         if (forgetemailTfController.text.trim().isEmpty ||
              //             !RegExp(Elements.emailpattern)
              //                 .hasMatch(forgetemailTfController.text) ||
              //             forgetemailTfController.text.length < 11) {
              //           showDialog(
              //               context: context,
              //               builder: (BuildContext context) {
              //                 return const AlertDialog(
              //                   title: Text("Alert"),
              //                   content: Text("Insert valid Credentials"),
              //                 );
              //               });
              //         } else {
              //           tapverifyemailbutton(context);
              //         }
              //       },
              //       child: const Text("Verify Email"),
              //     ))
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

  void tapverifyemailbutton(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ResetPasswordScreen()),
    );
  }
}
