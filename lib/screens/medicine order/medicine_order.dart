import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:doctor_hunt/screens/location/location.dart';
import 'package:doctor_hunt/screens/medical%20record/medical_record.dart';
import 'package:doctor_hunt/screens/navigation/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MedicineOrderScreen extends StatefulWidget {
  const MedicineOrderScreen({super.key});

  @override
  State<MedicineOrderScreen> createState() => _MedicineOrderScreenState();
}

class _MedicineOrderScreenState extends State<MedicineOrderScreen> {
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
                    RowWidget(rowText: DoctorHuntText.medicineOrder,
                    onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const NavigationScreen(),
                        ));
                      },
                    ),

                    SizedBox(height: 80.sp),

                    //***************** Circular Box *****************
                    Container(
                      height: 214.sp,
                      width: 214.sp,
                      decoration: BoxDecoration(
                        color: deathVictorious,
                        borderRadius: BorderRadius.circular(100.r),
                      ),
                      child: Image.asset(DoctorHuntAssetsPath.calendar),
                    ),

                    SizedBox(height: 30.sp),

                    //***************** Text *****************
                    Text(
                      DoctorHuntText.noOrder,
                      style: TextStyle(
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w700,
                          fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                          color: blackText),
                    ),

                    SizedBox(height: 20.sp),

                    //***************** Text *****************
                    Center(
                      child: Text(
                        DoctorHuntText.placeOrder,
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            color: royalIntrigue),
                      ),
                    ),

                    SizedBox(height: 40.sp),

                    //***************** Button *****************
                    ElevatedButtonWidget(
                      textPath: DoctorHuntText.order,
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const LocationScreen(),
                          ),
                        );
                      },
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
