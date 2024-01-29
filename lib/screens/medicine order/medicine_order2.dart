import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:doctor_hunt/screens/help%20center/help_center.dart';
import 'package:doctor_hunt/screens/my%20doctors/my_doctors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MedicineOrdersScreen extends StatefulWidget {
  const MedicineOrdersScreen({super.key});

  @override
  State<MedicineOrdersScreen> createState() => _MedicineOrdersScreenState();
}

class _MedicineOrdersScreenState extends State<MedicineOrdersScreen> {
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
            child: Padding(
              padding: EdgeInsets.only(left: 20.sp, right: 20.sp, top: 10.sp),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Back Arrow
                    Row(
                      children: [
                      Container(
                        height: 30.sp,
                        width: 30.sp,
                        decoration: BoxDecoration(
                            color: whiteText,
                            borderRadius: BorderRadius.circular(10.r)),
                        child: Icon(Icons.keyboard_arrow_left,
                            color: royalIntrigue),
                      ),

                      SizedBox(width: 20.sp),

                      // Text
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const HelpCenterScreen(),
                          ));
                        },
                        child: Text(
                          DoctorHuntText.medicineOrder,
                          style: TextStyle(
                              fontSize: 19.sp,
                              fontWeight: FontWeight.w600,
                              fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                              color: blackText),
                        ),
                      ),
                    ]),

                    SizedBox(height: 30.sp),

                    // Search Box
                    SearchField(searchPath: DoctorHuntText.search2),

                    SizedBox(
                      height: 30.sp,
                    ),

                    // First Row First Box
                    Row(children: [
                      FirstRowFirstBox(),
                      SizedBox(width: 10.sp),

                      // First Row Second Box
                      FirstRowSecondBox(),
                    ]),

                    SizedBox(height: 20.sp),

                    // Second Row First Box
                    Row(children: [
                      SecondRowFirstBox(),
                      SizedBox(width: 10.sp),
                      // Second Row Second Box
                      SecondRowSecondBox(),
                    ]),
                    SizedBox(
                      height: 20.sp,
                    ),

                    // Third Row First Box
                    Row(children: [
                      ThirdRowFirstBox(),
                      SizedBox(width: 10.sp),

                      // Third Row Second Box
                      ThirdRowSecondBox(),
                    ]),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

class FirstRowSecondBox extends StatelessWidget {
  const FirstRowSecondBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.sp,
      width: 150.sp,
      decoration: BoxDecoration(
        color: whiteText,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          height: 76.sp,
          width: 76.sp,
          decoration: BoxDecoration(
            color: deathVictorious,
            borderRadius: BorderRadius.circular(80.r),
          ),
          child: Image.asset(
            DoctorHuntAssetsPath.issues,
          ),
        ),
        SizedBox(height: 10.sp),
        SizedBox(
          width: 135.sp,
          child: Text(
            DoctorHuntText.issues,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
              color: royalIntrigue,
            ),
          ),
        ),
      ]),
    );
  }
}

class FirstRowFirstBox extends StatelessWidget {
  const FirstRowFirstBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.sp,
      width: 150.sp,
      decoration: BoxDecoration(
        color: whiteText,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          height: 76.sp,
          width: 76.sp,
          decoration: BoxDecoration(
            color: deathVictorious,
            borderRadius: BorderRadius.circular(80.r),
          ),
          child: Image.asset(
            DoctorHuntAssetsPath.medicine2,
          ),
        ),
        SizedBox(height: 10.sp),
        SizedBox(
          width: 120.sp,
          child: Text(
            DoctorHuntText.guide,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
              color: royalIntrigue,
            ),
          ),
        ),
      ]),
    );
  }
}

class ThirdRowFirstBox extends StatelessWidget {
  const ThirdRowFirstBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.sp,
      width: 150.sp,
      decoration: BoxDecoration(
        color: whiteText,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        ContainerWidget(assetPath: DoctorHuntAssetsPath.payment),
        SizedBox(height: 10.sp),
        TextWidget(textPath: DoctorHuntText.payments),
      ]),
    );
  }
}

class ThirdRowSecondBox extends StatelessWidget {
  const ThirdRowSecondBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.sp,
      width: 150.sp,
      decoration: BoxDecoration(
        color: whiteText,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        ContainerWidget(assetPath: DoctorHuntAssetsPath.returns),
        SizedBox(height: 10.sp),
        TextWidget(textPath: DoctorHuntText.returns),
      ]),
    );
  }
}

class SecondRowSecondBox extends StatelessWidget {
  const SecondRowSecondBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.sp,
      width: 150.sp,
      decoration: BoxDecoration(
        color: whiteText,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        ContainerWidget(assetPath: DoctorHuntAssetsPath.delivery),
        SizedBox(height: 10.sp),
        TextWidget(textPath: DoctorHuntText.delivery),
      ]),
    );
  }
}

class SecondRowFirstBox extends StatelessWidget {
  const SecondRowFirstBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.sp,
      width: 150.sp,
      decoration: BoxDecoration(
        color: whiteText,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        ContainerWidget(assetPath: DoctorHuntAssetsPath.cart),
        SizedBox(height: 10.sp),
        TextWidget(textPath: DoctorHuntText.status),
      ]),
    );
  }
}

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    super.key,
    required this.assetPath,
  });

  final String assetPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76.sp,
      width: 76.sp,
      decoration: BoxDecoration(
        color: deathVictorious,
        borderRadius: BorderRadius.circular(80.r),
      ),
      child: Image.asset(
        assetPath,
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.textPath,
  });

  final String textPath;

  @override
  Widget build(BuildContext context) {
    return Text(
      textPath,
      style: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
        color: royalIntrigue,
      ),
    );
  }
}
