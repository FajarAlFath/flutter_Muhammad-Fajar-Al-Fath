import 'package:flutter/material.dart';
import 'package:flutter_login/screens/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();

  late SharedPreferences logindata;
  late bool newUser;

  @override
  void initState() {
    checklogin();
    super.initState();
  }

  void checklogin() async {
    logindata = await SharedPreferences.getInstance();
    newUser = logindata.getBool('login') ?? true;

    if (newUser == false) {
      // ignore: use_build_context_synchronously
      Navigator.pushNamedAndRemoveUntil(
          context, '/firstscreen', (route) => false);
    }
  }

  void submit() {
    final isValid = _formKey.currentState?.validate();
    if (isValid!) {
      return;
    }
    _formKey.currentState?.save();
  }

  @override
  void dispose() {
    usernamecontroller.dispose();
    passcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
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
                height: 30,
              ),
              inputform()
            ],
          ),
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
              child: TextFormField(
                controller: usernamecontroller,
                decoration: ThemeHelper()
                    .textInputDecoration('User Name', 'Enter your user name'),
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value)) {
                    return 'Please input your email!';
                  }
                  return null;
                },
                onFieldSubmitted: (value) {},
              ),
            ),
            const SizedBox(height: 30.0),
            Container(
              decoration: ThemeHelper().inputBoxDecorationShaddow(),
              child: TextFormField(
                autofocus: true,
                controller: passcontroller,
                obscureText: true,
                decoration: ThemeHelper()
                    .textInputDecoration('Password', 'Enter your password'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please input your passwords!';
                  }
                  return null;
                },
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
                  final isValid = _formKey.currentState!.validate();
                  String username = usernamecontroller.text;

                  if (isValid) {
                    logindata.setBool('login', false);
                    logindata.setString('username', username);
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/firstscreen', (route) => false);
                  }
                },
              ),
            ),
          ],
        ));
  }
}
