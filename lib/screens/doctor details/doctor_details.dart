import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:doctor_hunt/screens/doctor%20appointment/doctor_appointment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorDetailsScreen extends StatefulWidget {
  const DoctorDetailsScreen({super.key});

  @override
  State<DoctorDetailsScreen> createState() => _DoctorDetailsScreenState();
}

class _DoctorDetailsScreenState extends State<DoctorDetailsScreen> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Back Arrow
                    Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          SizedBox(
                            width: 30.sp,
                          ),

                          // Text
                          Text(
                            DoctorHuntText.doctorDetails,
                            style: TextStyle(
                              fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                              color: blackText,
                            ),
                          ),
                          Spacer(),

                          // Search Icon
                          Icon(Icons.search, color: royalIntrigue),
                        ]),

                    SizedBox(height: 30.sp),

                    // Container
                    DoctorPediatricianContainer(isFavorite: isFavorite = true),

                    SizedBox(height: 30.sp),

                    // Second Container
                    Container(
                      height: 84.sp,
                      width: 305.sp,
                      decoration: BoxDecoration(
                        color: whiteText,
                        borderRadius: BorderRadius.circular(10.sp),
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SecondRowContainer(
                                textPath: DoctorHuntText.hundred,
                                text2Path: DoctorHuntText.running),

                            // Second Container
                            SecondRowContainer(
                                textPath: DoctorHuntText.fiveHundred,
                                text2Path: DoctorHuntText.ongoing),

                            // Third Container
                            SecondRowContainer(
                                textPath: DoctorHuntText.sevenHundred,
                                text2Path: DoctorHuntText.patient),
                          ]),
                    ),

                    SizedBox(height: 30.sp),
                    Row(
                      children: [
                        Text(
                          DoctorHuntText.services,
                          style: TextStyle(
                            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            color: blackText,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 30.sp,
                    ),

                    // First Services Row Texts
                    ServicesRow(
                        servicesNumberingPath: DoctorHuntText.one,
                        servicesTextPath: DoctorHuntText.priority, fontSize: 13.sp,),

                    SizedBox(height: 30.sp),

                    // Second Services Row Texts
                    ServicesRow(
                        servicesNumberingPath: DoctorHuntText.two,
                        servicesTextPath: DoctorHuntText.frustrating, fontSize: 12.7.sp,),

                    SizedBox(height: 30.sp),

                    // Third Services Row Texts
                    Row(
                      children: [
                      // First Text
                      Text(
                        DoctorHuntText.three,
                        style: TextStyle(
                          fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w700,
                          color: greenTeal,
                        ),
                      ),

                      SizedBox(width: 10.sp,),

                      // Second Text
                      Text(
                        DoctorHuntText.reminderSystem,
                        style: TextStyle(
                          fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                          fontSize: 12.7.sp,
                          fontWeight: FontWeight.w700,
                          color: royalIntrigue,
                        ),
                      ),
                    ]),
                    SizedBox(height: 30.sp,),

                    // Map
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

class DoctorPediatricianContainer extends StatelessWidget {
  const DoctorPediatricianContainer({
    super.key,
    required this.isFavorite,
  });

  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170.sp,
      decoration: BoxDecoration(
        color: whiteText,
        borderRadius: BorderRadius.circular(8.sp),
        border:
            Border.all(width: 1.sp, color: whiteText, style: BorderStyle.solid),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: 10.sp,
          right: 10.sp,
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 50.sp),
                child: Image.asset(DoctorHuntAssetsPath.pediatrician),
              ),
              SizedBox(width: 10.sp),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 180.sp,
                          child: Text(
                            DoctorHuntText.pediatrician,
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                              fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                              color: blackText,
                            ),
                          ),
                        ),
                        Icon(
                          !isFavorite
                              ? Icons.favorite_border_sharp
                              : Icons.favorite,
                          color: !isFavorite ? Colors.grey : Colors.red,
                          size: 20.sp,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.sp),
                  Text(
                    DoctorHuntText.cardiologistSpecialist,
                    style: TextStyle(
                        fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: royalIntrigue),
                  ),
                  SizedBox(height: 10.sp),
                  Row(children: [
                    Image.asset(DoctorHuntAssetsPath.rating),
                    SizedBox(width: 40.sp),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: DoctorHuntText.dollarSymbol,
                          style: TextStyle(
                            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: greenTeal,
                          ),
                        ),
                        TextSpan(
                          text: DoctorHuntText.distanceCovered,
                          style: TextStyle(
                            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: royalIntrigue,
                          ),
                        ),
                      ]),
                    ),
                  ]),
                  SizedBox(height: 10.sp),

                  // Button
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const DoctorAppointmentScreen(),
                      ));
                    },
                    child: Text(
                      DoctorHuntText.bookNow,
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                          color: whiteText),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(greenTeal),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.sp),
                        ),
                      ),
                      fixedSize: MaterialStateProperty.all(Size(150.sp, 32.sp)),
                    ),
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}

class ServicesRow extends StatelessWidget {
  const ServicesRow({
    super.key,
    this.fontSize,
    required this.servicesNumberingPath,
    required this.servicesTextPath,
  });

  final String servicesNumberingPath;
  final String servicesTextPath;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      // First Text
      Text(
        servicesNumberingPath,
        style: TextStyle(
          fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
          fontSize: 13.sp,
          fontWeight: FontWeight.w700,
          color: greenTeal,
        ),
      ),
      SizedBox(
        width: 10.sp,
      ),
      // Second Text
      Text(
        servicesTextPath,
        style: TextStyle(
          fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
          fontSize: fontSize,
          fontWeight: FontWeight.w700,
          color: royalIntrigue,
        ),
      ),
    ]);
  }
}

class SecondRowContainer extends StatelessWidget {
  const SecondRowContainer({
    super.key,
    required this.textPath,
    required this.text2Path,
  });

  final String textPath;
  final String text2Path;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.sp,
      width: 90.sp,
      decoration: BoxDecoration(
        color: silverback,
        borderRadius: BorderRadius.circular(10.sp),
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        // First Text
        Text(
          textPath,
          style: TextStyle(
            color: blackText,
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
          ),
        ),
        SizedBox(
          height: 5.sp,
        ),
        // Second Text
        Text(
          text2Path,
          style: TextStyle(
            color: royalIntrigue,
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
          ),
        ),
      ]),
    );
  }
}
