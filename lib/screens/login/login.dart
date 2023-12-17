import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:doctor_hunt/screens/signup/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passwordObscured = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 100.sp),

              // Welcome Back
              Center(
                child: Text(
                  DoctorHuntText.welcomeBack,
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                    color: blackText,
                    fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                  ),
                ),
              ),
              SizedBox(height: 10.sp),

              // Search Course
              SearchCourseText(),
              SizedBox(height: 60.sp),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  // Google
                  Google(),

                  // Facebook
                  Facebook(),
                ],
              ),
              SizedBox(height: 20.sp),

              // Email TextField
              EmailTextFormField(),
              SizedBox(height: 20.sp),

              // PasswordField
              PasswordField(
                updateObscured: () {
                  setState(() {
                    passwordObscured = !passwordObscured;
                  });
                },
                passwordObscured: passwordObscured,
              ),
              SizedBox(height: 20.sp),

              // Login Button
              LoginButton(),
              SizedBox(height: 10.sp),

              // Forgot Password
              ForgotPasswordTextButton(),
              SizedBox(height: 60.sp),

              // Don’t have an account? Join us
              JoinUsTextButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class EmailTextFormField extends StatelessWidget {
  const EmailTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54.sp,
      width: 320.sp,
      child: TextField(
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r)),
          contentPadding: EdgeInsets.symmetric(
              horizontal: 20.sp, vertical: 20.sp),
          isCollapsed: true,
          hintText: DoctorHuntText.emailAddress,
          hintStyle: TextStyle(
            color: royalIntrigue,
            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
            fontSize: 16.sp,
            fontWeight: FontWeight.w300,
          ),
          filled: true,
          fillColor: whiteText,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(color: royalIntrigue),
          ),
          suffixIcon: Icon(Icons.done, color: royalIntrigue),
        ),
      ),
    );
  }
}

class ForgotPasswordTextButton extends StatelessWidget {
  const ForgotPasswordTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        DoctorHuntText.forgotPassword,
        style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: greenTeal,
            fontFamily: DoctorHuntAssetsPath.doctorHuntFont),
      ),
    );
  }
}

class JoinUsTextButton extends StatelessWidget {
  const JoinUsTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => const SignupScreen()));
      },
      child: Text(
        DoctorHuntText.joinUs,
        style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: greenTeal,
            fontFamily: DoctorHuntAssetsPath.doctorHuntFont),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Navigator.of(context).push(MaterialPageRoute(
        //     builder: (BuildContext context) => const LoginScreen()));
      },
      child: Text(
        DoctorHuntText.login,
        style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
            color: whiteText),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(greenTeal),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.sp),
          ),
        ),
        fixedSize: MaterialStateProperty.all(Size(290.sp, 50.sp)),
      ),
    );
  }
}
