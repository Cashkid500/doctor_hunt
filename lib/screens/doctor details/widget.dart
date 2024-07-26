import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:doctor_hunt/screens/doctor%20appointment/doctor_appointment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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

                  //***************** Button ******************
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
                      backgroundColor: WidgetStateProperty.all(greenTeal),
                      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.sp),
                        ),
                      ),
                      fixedSize: WidgetStateProperty.all(Size(150.sp, 32.sp)),
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
      //***************** First Text ******************
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

      //***************** Second Text ******************
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
        //***************** First Text ******************
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

        //***************** Second Text ******************
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