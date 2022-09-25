import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:odcproject/view/componant/pages/Authonication/signup.dart';
import 'package:odcproject/view/componant/pages/homepage_screens/home_screen.dart';
import 'package:odcproject/view/componant/pages/layout_screen.dart';
import 'package:odcproject/view_model/login_cubit/login_cupit_cubit.dart';
import 'package:odcproject/view_model/state.dart';

class Login extends StatefulWidget {

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isSecure=true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => LoginCubit(),
        child: BlocConsumer<LoginCubit, CubitState>(
          listener: (context, state) {},
          builder: (context, state) {
            LoginCubit login = LoginCubit.get(context);
            return Scaffold(
              body: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(35.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Orange ",
                              style: GoogleFonts.poppins(
                                  color: Colors.orange,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold)),
                          Text("Digetal Center",
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Login",
                            style: GoogleFonts.poppins(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: 60,
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              controller: login.emailcontroller,
                              decoration: InputDecoration(
                                labelText: "E-Mail",
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 60,
                            child: TextFormField(
                              obscureText: isSecure,
                              controller: login.passwordcontroller,
                              decoration: InputDecoration(
                                labelText: "Password",
                                suffixIcon: IconButton(
                                  icon: Icon(
                                      isSecure ? Icons.visibility : Icons.visibility_off),
                                  onPressed: (){

                                    setState(() {
                                      isSecure = !isSecure;
                                    });
                                  },
                                ),
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Forgot Password?",
                              style: TextStyle(
                                color: Colors.orange,
                                decoration: TextDecoration.underline,
                              )),
                          SizedBox(
                            height: 60,
                          ),
                          Container(
                            width: double.infinity,
                            child: Material(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              color: Colors.orange[800],
                              child: MaterialButton(
                                height: 40,
                                onPressed: () {
                                  login.login(context);
                                  Navigator.push(
                                      context, MaterialPageRoute(builder: (context) =>Layout()));
                                },
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 140,
                                child: Expanded(
                                  child: Divider(
                                    thickness: 0,
                                    endIndent: 2,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Text(
                                "OR",
                                style: GoogleFonts.poppins(
                                    color: Colors.black, fontSize: 20),
                              ),
                              Container(
                                  width: 150,
                                  child: Expanded(
                                    child: Divider(
                                      thickness: 0,
                                      endIndent: 2,
                                      color: Colors.black,
                                    ),
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: double.infinity,
                            height: 50,
                            child: OutlinedButton(
                              onPressed: () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) =>SignUp()));
                              },
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              style: ButtonStyle(
                                  side: MaterialStateProperty.all(BorderSide(
                                color: Colors.orange,
                                width: 3.0,
                              ))),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
