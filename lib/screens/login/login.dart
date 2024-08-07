import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:doctor_hunt/screens/navigation/navigation.dart';
import 'package:doctor_hunt/screens/signup/sign_up.dart';
import 'package:doctor_hunt/screens/signup/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

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

                //***************** Welcome Back *****************
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

                //***************** Email TextField *****************
                EmailTextFormField(),
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

                SizedBox(height: 20.sp),

                //***************** Login Button *****************
                ElevatedButtonWidget(
                  elevatedButtonPath: DoctorHuntText.login,
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const NavigationScreen()),
                    );
                  },
                ),

                SizedBox(height: 10.sp),

                //***************** Forgot Password *****************
                ForgotPasswordTextButton(),
                SizedBox(height: 60.sp),

                //***************** Don’t have an account? Join us *****************
                JoinUsTextButton(),
              ],
            ),
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
          focusedBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(12.r)),
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.sp, vertical: 20.sp),
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
            borderSide: BorderSide(
                color: whiteText, width: 0.5.sp, style: BorderStyle.solid),
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
      onPressed: () {
        _showBottomSheet(context);
      },
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

//***************** Forgot Password Bottom Sheet *****************
void _showBottomSheet(BuildContext context) {
  showModalBottomSheet(
    backgroundColor: Colors.transparent,
    isDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 376.sp,
        decoration: BoxDecoration(
          color: whiteText,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32.r),
            topRight: Radius.circular(32.r),
          ),
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
      
        //***************** Content of the bottom sheet *****************
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              title: Column(
                children: [
                  SizedBox(height: 10.sp),
                  SizedBox(
                    height: 5.sp,
                    width: 130.sp,
                    child: Divider(
                      color: weatheredStone,
                      thickness: 5.sp,
                    ),
                  ),
                  SizedBox(height: 50.sp),
      
                  //***************** Forgot Password *****************
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      DoctorHuntText.forgotPassword,
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w600,
                        color: blackText,
                        fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.sp),
                  SizedBox(
                    width: 305.sp,
                    child: Text(
                      DoctorHuntText.verification,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        height: 1.8.sp,
                        color: royalIntrigue,
                      ),
                    ),
                  ),
                  SizedBox(height: 30.sp),
      
                  //***************** Email TextFormField *****************
                  TextFieldWidget(hintTextPath: DoctorHuntText.email),
                  SizedBox(height: 30.sp),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      //***************** OTP Bottom Sheet *****************
                      showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        isDismissible: false,
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: 375.sp,
                            decoration: BoxDecoration(
                              color: whiteText,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(32.r),
                                topRight: Radius.circular(32.r),
                              ),
                            ),
                                  
                            //***************** Content of the bottom sheet *****************
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                ListTile(
                                  title: Column(
                                    children: [
                                      SizedBox(height: 10.sp),
                                      SizedBox(
                                        height: 5.sp,
                                        width: 130.sp,
                                        child: Divider(
                                          color: weatheredStone,
                                          thickness: 5.sp,
                                        ),
                                      ),
                                      SizedBox(height: 50.sp),
                                  
                                      //***************** Enter 4 Digits Code *****************
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          DoctorHuntText.digitsCode,
                                          style: TextStyle(
                                            fontSize: 24.sp,
                                            fontWeight: FontWeight.w600,
                                            color: blackText,
                                            fontFamily: DoctorHuntAssetsPath
                                                .doctorHuntFont,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 20.sp),
                                      SizedBox(
                                        width: 310.sp,
                                        child: Text(
                                          DoctorHuntText.fourDigits,
                                          style: TextStyle(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w400,
                                            height: 1.8.sp,
                                            color: royalIntrigue,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 30.sp),
                                  
                                      //***************** OTP TextField *****************
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 20.sp),
                                        child: PinCodeTextField(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          appContext: context,
                                          length: 4,
                                          cursorHeight: 19,
                                          enableActiveFill: true,
                                          textStyle: TextStyle(
                                            fontSize: 18.sp,
                                            fontFamily: DoctorHuntAssetsPath
                                                .doctorHuntFont,
                                            fontWeight: FontWeight.normal,
                                            color: greenTeal,
                                          ),
                                          inputFormatters: [
                                            FilteringTextInputFormatter
                                                .digitsOnly
                                          ],
                                          pinTheme: PinTheme(
                                            shape: PinCodeFieldShape.box,
                                            fieldHeight: 45.17.sp,
                                            fieldWidth: 45.17.sp,
                                            inactiveColor: royalIntrigue,
                                            activeColor: royalIntrigue,
                                            selectedColor: royalIntrigue,
                                            activeFillColor: whiteText,
                                            selectedFillColor: whiteText,
                                            inactiveFillColor: whiteText,
                                            borderRadius:
                                                BorderRadius.circular(10.r),
                                          ),
                                          onChanged: (value) {},
                                        ),
                                      ),
                                      SizedBox(height: 30.sp),
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                  
                                          //***************** Reset Password Bottom Sheet *****************
                                          showModalBottomSheet(
                                            backgroundColor: Colors.transparent,
                                            isDismissible: false,
                                            context: context,
                                            builder: (BuildContext context) {
                                              return ResetPasswordBottomSheet();
                                            },
                                          );
                                        },
                                        child: Text(
                                          DoctorHuntText.continue1,
                                          style: TextStyle(
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: DoctorHuntAssetsPath
                                                  .doctorHuntFont,
                                              color: whiteText),
                                        ),
                                        style: ButtonStyle(
                                          backgroundColor:
                                              WidgetStateProperty.all(
                                                  greenTeal),
                                          shape: WidgetStateProperty.all<
                                              RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.sp),
                                            ),
                                          ),
                                          fixedSize: WidgetStateProperty.all(
                                              Size(290.sp, 50.sp)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  onTap: () {
                                    //***************** Handle option 2 *****************
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Text(
                      DoctorHuntText.continue1,
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
                  ),
                ],
              ),
              onTap: () {
                // Handle option 2
                Navigator.pop(context);
              },
            ),
          ],
        ),
      );
    },
  );
}

class ResetPasswordBottomSheet extends StatefulWidget {
  const ResetPasswordBottomSheet({
    super.key,
  });

  @override
  State<ResetPasswordBottomSheet> createState() =>
      _ResetPasswordBottomSheetState();
}

class _ResetPasswordBottomSheetState extends State<ResetPasswordBottomSheet> {
  bool passwordObscured = true;
  bool _isSecurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 460.sp,
      decoration: BoxDecoration(
        color: whiteText,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32.r),
          topRight: Radius.circular(32.r),
        ),
      ),
    
      //***************** Content of the bottom sheet *****************
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            title: Column(
              children: [
                SizedBox(height: 10.sp),
                SizedBox(
                  height: 5.sp,
                  width: 130.sp,
                  child: Divider(
                    color: weatheredStone,
                    thickness: 5.sp,
                  ),
                ),
                SizedBox(height: 50.sp),
          
                //***************** Reset Password *****************
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    DoctorHuntText.resetPassword,
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                      color: blackText,
                      fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                    ),
                  ),
                ),
                SizedBox(height: 20.sp),
                SizedBox(
                  width: 315.sp,
                  child: Text(
                    DoctorHuntText.setPassword,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      height: 1.8.sp,
                      color: royalIntrigue,
                    ),
                  ),
                ),
                SizedBox(height: 30.sp),
          
                //***************** New Password TextFormField *****************
                SizedBox(
                  height: 54.sp,
                  width: 320.sp,
                  child: TextField(
                    keyboardType: TextInputType.name,
                    obscureText: passwordObscured,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r)),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.sp, vertical: 20.sp),
                      isCollapsed: true,
                      hintText: DoctorHuntText.newPassword,
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
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            passwordObscured = !passwordObscured;
                          });
                        },
                        icon: Icon(
                          passwordObscured
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: royalIntrigue,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.sp),
          
                //***************** Re-enter Password Field *****************
                SizedBox(
                  height: 54.sp,
                  width: 320.sp,
                  child: TextField(
                    keyboardType: TextInputType.name,
                    obscureText: _isSecurePassword,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r)),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.sp, vertical: 20.sp),
                      isCollapsed: true,
                      hintText: DoctorHuntText.reEnter,
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
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _isSecurePassword = !_isSecurePassword;
                          });
                        },
                        icon: Icon(
                          _isSecurePassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: royalIntrigue,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.sp),
          
                //***************** Update Password Button *****************
                ElevatedButtonWidget(
                    elevatedButtonPath: DoctorHuntText.updatePassword,
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const LoginScreen()));
                    }),
              ],
            ),
            onTap: () {
              //***************** Handle option 2 *****************
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
