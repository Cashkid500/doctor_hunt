import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:doctor_hunt/screens/login/login.dart';
import 'package:doctor_hunt/screens/signup/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool passwordObscured = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                const Color.fromARGB(255, 166, 202, 167), // Top
                whiteText, // Center
                const Color.fromARGB(255, 166, 202, 167), // Bottom
              ],
            ),
          ),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 100.sp),

                //***************** Join us to start searching *****************
                Center(
                  child: Text(
                    DoctorHuntText.join,
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                      color: blackText,
                      fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                    ),
                  ),
                ),

                SizedBox(height: 10.sp),

                //***************** Search Course *****************
                SearchCourseText(),

                SizedBox(height: 60.sp),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //***************** Google *****************
                    Google(),

                    //***************** Facebook *****************
                    Facebook(),
                  ],
                ),

                SizedBox(height: 20.sp),

                //***************** Name TextField *****************
                TextFieldWidget(hintTextPath: DoctorHuntText.name),

                SizedBox(height: 20.sp),

                //***************** Email TextField *****************
                TextFieldWidget(hintTextPath: DoctorHuntText.email),

                SizedBox(height: 20.sp),

                //***************** PasswordField *****************
                PasswordField(
                  updateObscured: () {
                    setState(() {
                      passwordObscured = !passwordObscured;
                    });
                  },
                  passwordObscured: passwordObscured,
                ),

                SizedBox(height: 10.sp),

                //***************** Row *****************
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //***************** Circular Box *****************
                    Container(
                      height: 16.sp,
                      width: 16.sp,
                      decoration: BoxDecoration(
                        color: royalIntrigue,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                    ),

                    //***************** I agree with the Terms of Service & Privacy Policy *****************
                    Padding(
                      padding: EdgeInsets.only(right: 23.sp),
                      child: Text(
                        DoctorHuntText.agree,
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: royalIntrigue,
                          fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 60.sp),

                //***************** Sign Up Button *****************
                ElevatedButtonWidget(
                  elevatedButtonPath: DoctorHuntText.signup,
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const LoginScreen()),
                    );
                  },
                ),

                SizedBox(height: 10.sp),

                //***************** Have an account? Log In *****************
                TextButtonWidget(
                    textButtonPath: DoctorHuntText.accountConfirmation),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

