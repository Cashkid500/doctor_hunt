import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:doctor_hunt/screens/medical%20record/medical_record.dart';
import 'package:doctor_hunt/screens/my%20doctors/my_doctors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavouriteDoctorsScreen extends StatefulWidget {
  const FavouriteDoctorsScreen({super.key});

  @override
  State<FavouriteDoctorsScreen> createState() => _FavouriteDoctorsScreenState();
}

class _FavouriteDoctorsScreenState extends State<FavouriteDoctorsScreen> {
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
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 20.sp, right: 20.sp),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Back Arrow
                    RowWidget(rowText: DoctorHuntText.favouriteDoctors),

                    SizedBox(height: 30.sp),

                    // Search Box
                    SearchField(searchPath: DoctorHuntText.dentist2),

                    SizedBox(
                      height: 30.sp,
                    ),

                    // First Row
                    Row(
                      children: [
                      // First Row First Container
                      FirstContainer(
                          isFavorite: isFavorite = false,
                          imagePath: DoctorHuntAssetsPath.shouey,
                          namePath: DoctorHuntText.shouey,
                          specializationPath: DoctorHuntText.cardiologySpecialist),

                      SizedBox(width: 10.sp),

                      // First Row Second Container
                      Expanded(
                          child: FirstContainer(
                              isFavorite: isFavorite = true,
                              imagePath: DoctorHuntAssetsPath.christenfeld,
                              namePath: DoctorHuntText.christenfeld,
                              specializationPath: DoctorHuntText.dentistCancer)),
                    ]),
                    SizedBox(height: 20.sp),

                    // Second Row
                    Row(
                      children: [
                      // First Row First Container
                      FirstContainer(
                          isFavorite: isFavorite,
                          imagePath: DoctorHuntAssetsPath.shouey,
                          namePath: DoctorHuntText.shouey,
                          specializationPath: DoctorHuntText.dentistMedicine),

                      SizedBox(width: 10.sp),

                      // First Row Second Container
                      Expanded(
                          child: FirstContainer(
                              isFavorite: isFavorite = false,
                              imagePath: DoctorHuntAssetsPath.dentist,
                              namePath: DoctorHuntText.shouey,
                              specializationPath: DoctorHuntText.dentistSpecialist)),
                    ]),

                    SizedBox(height: 40.sp),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            DoctorHuntText.featureDoctor,
                            style: TextStyle(
                                fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w700,
                                color: blackText),
                          ),
                          Text(
                            DoctorHuntText.see,
                            style: TextStyle(
                              fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: royalIntrigue,
                            ),
                          ),
                        ]),
                    SizedBox(
                      height: 30.sp,
                    ),

                    // Last Row
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                        LastRowContainer(isFavorite: isFavorite, starTextPath: DoctorHuntText.threePointSeven, doctorsNamePath: DoctorHuntText.crick, hourPath: DoctorHuntText.twentyFiveHours, doctorImagePath: DoctorHuntAssetsPath.shouey),

                        SizedBox(width: 5.sp,),

                        // Second Container
                        LastRowContainer(isFavorite: isFavorite = true, starTextPath: DoctorHuntText.threePointZero, doctorsNamePath: DoctorHuntText.strain, hourPath: DoctorHuntText.twentyTwoHours, doctorImagePath: DoctorHuntAssetsPath.strain),
                        SizedBox(width: 5.sp,),

                        // Third Container
                        LastRowContainer(isFavorite: isFavorite = false, starTextPath: DoctorHuntText.twoPointNine, doctorsNamePath: DoctorHuntText.lachinet, hourPath: DoctorHuntText.twentyNineHours, doctorImagePath: DoctorHuntAssetsPath.lachinet),
                        SizedBox(width: 5.sp,),

                        // Fourth Container
                        LastRowContainer(isFavorite: isFavorite = true, starTextPath: DoctorHuntText.threePointZero, doctorsNamePath: DoctorHuntText.crick, hourPath: DoctorHuntText.twentyFiveHours, doctorImagePath: DoctorHuntAssetsPath.shouey),
                      ]),
                    ),

                    SizedBox(
                      height: 5.sp,
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

class LastRowContainer extends StatelessWidget {
  const LastRowContainer({
    super.key,
    required this.isFavorite,
    required this.starTextPath,
    required this.doctorsNamePath,
    required this.hourPath,
    required this.doctorImagePath,
  });

  final bool isFavorite;
  final String starTextPath;
  final String doctorsNamePath;
  final String hourPath;
  final String doctorImagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135.sp,
      width: 106.sp,
      decoration: BoxDecoration(
        color: whiteText,
        borderRadius: BorderRadius.circular(6.r),
        border: Border.all(
            color: whiteText,
            width: 1.0.sp,
            style: BorderStyle.solid),
      ),
      child: Padding(
        padding: EdgeInsets.only(
            left: 10.sp, right: 10.sp, top: 10.sp),
        child: Column(
          children: [
            Row(
              children: [
              Icon(
                !isFavorite
                    ? Icons.favorite_border_sharp
                    : Icons.favorite,
                color:
                    !isFavorite ? Colors.grey : Colors.red,
                size: 20.sp,
              ),
              Spacer(),
              Image.asset(DoctorHuntAssetsPath.star),
              SizedBox(
                width: 5.sp,
              ),
              Text(
                starTextPath,
                style: TextStyle(
                    fontFamily:
                        DoctorHuntAssetsPath.doctorHuntFont,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: blackText),
              ),
            ]),
            SizedBox(
              height: 2.sp,
            ),
            Container(
                height: 54.sp,
                width: 54.sp,
                child: Image.asset(
                    doctorImagePath)),
            SizedBox(
              height: 10.sp,
            ),
            Text(
              doctorsNamePath,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
                fontFamily:
                    DoctorHuntAssetsPath.doctorHuntFont,
                color: blackText,
              ),
            ),
            SizedBox(
              height: 5.sp,
            ),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: DoctorHuntText.dollarSymbol,
                  style: TextStyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily:
                        DoctorHuntAssetsPath.doctorHuntFont,
                    color: greenTeal,
                  ),
                ),
                TextSpan(
                  text: hourPath,
                  style: TextStyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w300,
                    fontFamily:
                        DoctorHuntAssetsPath.doctorHuntFont,
                    color: royalIntrigue,
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

class FirstContainer extends StatelessWidget {
  const FirstContainer({
    super.key,
    required this.isFavorite,
    required this.imagePath,
    required this.namePath,
    required this.specializationPath,
  });

  final bool isFavorite;
  final String imagePath;
  final String namePath;
  final String specializationPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.sp,
      width: 160.sp,
      decoration: BoxDecoration(
        color: whiteText,
        borderRadius: BorderRadius.circular(6.r),
        border: Border.all(
            color: whiteText, width: 1.0.sp, style: BorderStyle.solid),
      ),
      child: Padding(
        padding: EdgeInsets.only(right: 10.sp, top: 10.sp),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                !isFavorite ? Icons.favorite_border_sharp : Icons.favorite,
                color: !isFavorite ? Colors.grey : Colors.red,
                size: 20.sp,
              ),
            ],
          ),
          SizedBox(
            height: 2.sp,
          ),
          Image.asset(imagePath),
          SizedBox(
            height: 10.sp,
          ),
          Text(
            namePath,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
              fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
              color: blackText,
            ),
          ),
          SizedBox(
            height: 5.sp,
          ),
          Text(
            specializationPath,
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
              color: greenTeal,
            ),
          ),
        ]),
      ),
    );
  }
}
