import 'package:flutter/material.dart';
import 'package:flutter_login/screens/theme.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController controller = TextEditingController();
  TextEditingController controller1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 150),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Image(
              image: AssetImage('assets/word.png'),
              width: 200,
              height: 200,
            ),
            const SizedBox(
              height: 60,
            ),
            inputform()
          ],
        ),
      ),
    );
  }

  Widget inputform() {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            Container(
              decoration: ThemeHelper().inputBoxDecorationShaddow(),
              child: TextField(
                decoration: ThemeHelper()
                    .textInputDecoration('User Name', 'Enter your user name'),
              ),
            ),
            const SizedBox(height: 30.0),
            Container(
              decoration: ThemeHelper().inputBoxDecorationShaddow(),
              child: TextField(
                obscureText: true,
                decoration: ThemeHelper()
                    .textInputDecoration('Password', 'Enter your password'),
              ),
            ),
            const SizedBox(height: 15.0),
            Container(
              decoration: ThemeHelper().buttonBoxDecoration(context),
              child: ElevatedButton(
                style: ThemeHelper().buttonStyle(),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                  child: Text(
                    'Sign In'.toUpperCase(),
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                onPressed: () {
                  //After successful login we will redirect to profile page. Let's create profile page now
                },
              ),
            ),
          ],
        ));
  }
}
