import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:doctor_hunt/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchCourseText extends StatelessWidget {
  const SearchCourseText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 299.sp,
      child: Text(
        DoctorHuntText.search,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          height: 1.8.sp,
          color: royalIntrigue,
          fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
        ),
      ),
    );
  }
}

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    super.key,
    required this.textButtonPath,
  });

  final String textButtonPath;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => const LoginScreen()));
      },
      child: Text(
        textButtonPath,
        style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: greenTeal,
            fontFamily: DoctorHuntAssetsPath.doctorHuntFont),
      ),
    );
  }
}

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    super.key,
    required this.onPressed,
    required this.elevatedButtonPath,
  });

  final VoidCallback onPressed;
  final String elevatedButtonPath;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        elevatedButtonPath,
        style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
            color: whiteText),
      ),
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(greenTeal),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.sp),
          ),
        ),
        fixedSize: WidgetStateProperty.all(Size(290.sp, 50.sp)),
      ),
    );
  }
}

class PasswordField extends StatelessWidget {
  final bool passwordObscured;
  final Function() updateObscured;
  const PasswordField({
    super.key,
    required this.passwordObscured,
    required this.updateObscured,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54.sp,
      width: 320.sp,
      child: TextField(
        keyboardType: TextInputType.text,
        obscureText: passwordObscured,
        obscuringCharacter: '*',
        decoration: InputDecoration(
          focusedBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(12.r)),
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.sp, vertical: 20.sp),
          isCollapsed: true,
          hintText: DoctorHuntText.password,
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
            borderSide: BorderSide(
                color: whiteText, width: 0.5.sp, style: BorderStyle.solid),
          ),
          suffixIcon: IconButton(
            onPressed: updateObscured,
            icon: Icon(
              passwordObscured ? Icons.visibility_off : Icons.visibility,
              color: royalIntrigue,
            ),
          ),
        ),
      ),
    );
  }
}

class Google extends StatelessWidget {
  const Google({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.sp,
      height: 45.sp,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.sp),
        color: whiteText,
      ),
      child: Padding(
        padding: EdgeInsets.only(right: 20.0, left: 20.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Image.asset(DoctorHuntAssetsPath.google),
          Text(
            DoctorHuntText.google,
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w300,
                color: royalIntrigue,
                fontFamily: DoctorHuntAssetsPath.doctorHuntFont),
          ),
        ]),
      ),
    );
  }
}

class Facebook extends StatelessWidget {
  const Facebook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.sp,
      height: 45.sp,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.sp),
        color: whiteText,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(DoctorHuntAssetsPath.facebook),
          Text(
            DoctorHuntText.facebook,
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w300,
                color: royalIntrigue,
                fontFamily: DoctorHuntAssetsPath.doctorHuntFont),
          ),
        ],
      ),
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.hintTextPath,
  });

  final String hintTextPath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54.sp,
      width: 320.sp,
      child: TextField(
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          focusedBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(12.r)),
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.sp, vertical: 20.sp),
          isCollapsed: true,
          hintText: hintTextPath,
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
            borderSide: BorderSide(
                color: whiteText, width: 0.5.sp, style: BorderStyle.solid),
          ),
        ),
      ),
    );
  }
}
