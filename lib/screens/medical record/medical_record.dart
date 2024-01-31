import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:doctor_hunt/screens/medical%20record/add_records.dart';
import 'package:doctor_hunt/screens/navigation/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MedicalRecordScreen extends StatefulWidget {
  const MedicalRecordScreen({super.key});

  @override
  State<MedicalRecordScreen> createState() => _MedicalRecordScreenState();
}

class _MedicalRecordScreenState extends State<MedicalRecordScreen> {
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
              padding: EdgeInsets.only(left: 20.sp, top: 10.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Back Arrow
                  RowWidget(
                    rowText: DoctorHuntText.medicalRecord,
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const NavigationScreen(),
                        ),
                      );
                    },
                  ),

                  SizedBox(height: 80.sp),

                  // Circular Box
                  Container(
                    height: 214.sp,
                    width: 214.sp,
                    decoration: BoxDecoration(
                      color: deathVictorious,
                      borderRadius: BorderRadius.circular(100.r),
                    ),
                    child: Image.asset(DoctorHuntAssetsPath.writingMaterials),
                  ),

                  SizedBox(height: 30.sp),

                  // Text
                  GestureDetector(
                    onTap: () {
                      _showBottomSheet(context);
                    },
                    child: Text(
                      DoctorHuntText.addMedicalRecord,
                      style: TextStyle(
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w700,
                          fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                          color: blackText),
                    ),
                  ),

                  SizedBox(height: 20.sp),

                  // Text
                  SizedBox(
                    width: 330.sp,
                    child: Text(
                      DoctorHuntText.healthHistory,
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                          color: royalIntrigue),
                    ),
                  ),

                  SizedBox(height: 30.sp),

                  // Button
                  ElevatedButtonWidget(
                    textPath: DoctorHuntText.addRecord,
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const AddRecordScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class RowWidget extends StatelessWidget {
  const RowWidget({
    super.key,
    this.onTap,
    required this.rowText,
  });

  final String rowText;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        height: 30.sp,
        width: 30.sp,
        decoration: BoxDecoration(
            color: whiteText, borderRadius: BorderRadius.circular(10.r)),
        child: GestureDetector(
          onTap: onTap,
          child: Icon(Icons.keyboard_arrow_left, color: royalIntrigue),
        ),
      ),

      SizedBox(width: 20.sp),

      // Text
      Text(
        rowText,
        style: TextStyle(
            fontSize: 19.sp,
            fontWeight: FontWeight.w600,
            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
            color: carbon),
      ),
    ]);
  }
}

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    super.key,
    required this.onPressed,
    required this.textPath,
  });
  final VoidCallback onPressed;
  final String textPath;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        textPath,
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
        fixedSize: MaterialStateProperty.all(Size(270.sp, 54.sp)),
      ),
    );
  }
}

// Bottom Sheet
void _showBottomSheet(BuildContext context) {
  showModalBottomSheet(
    backgroundColor: Colors.transparent,
    isDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 250.sp,
        decoration: BoxDecoration(
          color: whiteText,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32.r),
            topRight: Radius.circular(32.r),
          ),
        ),

        // Content of the bottom sheet
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
                  SizedBox(height: 40.sp),

                  // Add a record
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        DoctorHuntText.addRecord,
                        style: TextStyle(
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w600,
                          color: blackText,
                          fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.sp),

                  // Take a photo
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.camera_alt_outlined,
                        color: royalIntrigue,
                      ),
                      SizedBox(width: 10.sp),
                      Text(
                        DoctorHuntText.photo,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: royalIntrigue,
                          fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 10.sp),

                  // Upload from gallery
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.image_outlined,
                        color: royalIntrigue,
                      ),
                      SizedBox(width: 10.sp),
                      Text(
                        DoctorHuntText.upload,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: royalIntrigue,
                          fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 10.sp),

                  // Upload files
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.file_present_outlined,
                        color: royalIntrigue,
                      ),
                      SizedBox(width: 10.sp),
                      Text(
                        DoctorHuntText.files,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: royalIntrigue,
                          fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                        ),
                      ),
                    ],
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
