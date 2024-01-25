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
  bool isFavourite = false;
  String starTextPath = "3.7";
  String doctorsNamePath = "Dr. Crick";
  String hourPath = "25.00/ hours";
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
                    RowWidget(rowText: "Favourite Doctors"),

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
                          imagePath: "assets/images/shouey.png",
                          namePath: "Dr. Shouey",
                          specializationPath: "Specialist Cardiology"),

                      SizedBox(width: 10.sp),

                      // First Row Second Container
                      Expanded(
                          child: FirstContainer(
                              isFavorite: isFavorite = true,
                              imagePath: "assets/images/Christenfeld.png",
                              namePath: "Dr. Christenfeld N",
                              specializationPath: "Specialist Cancer")),
                    ]),
                    SizedBox(height: 20.sp),

                    // Second Row
                    Row(
                      children: [
                      // First Row First Container
                      FirstContainer(
                          isFavorite: isFavorite,
                          imagePath: "assets/images/shouey.png",
                          namePath: "Dr. Shouey",
                          specializationPath: "Specialist Medicine"),

                      SizedBox(width: 10.sp),

                      // First Row Second Container
                      Expanded(
                          child: FirstContainer(
                              isFavorite: isFavorite = false,
                              imagePath: "assets/images/dentist.png",
                              namePath: "Dr. Shouey",
                              specializationPath: "Specialist Dentist")),
                    ]),

                    SizedBox(height: 40.sp),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Feature Doctor",
                            style: TextStyle(
                                fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w700,
                                color: blackText),
                          ),
                          Text(
                            "See all>",
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
                        LastRowContainer(isFavourite: isFavourite, starTextPath: "3.7", doctorsNamePath: "Dr. Crick", hourPath: "25.00/ hours", doctorImagePath: "assets/images/shouey.png",),

                        SizedBox(
                          width: 5.sp,
                        ),

                        // Second Container
                        // Container(
                        //   height: 135.sp,
                        //   width: 106.sp,
                        //   decoration: BoxDecoration(
                        //     color: whiteText,
                        //     borderRadius: BorderRadius.circular(6.r),
                        //     border: Border.all(
                        //         color: whiteText,
                        //         width: 1.0.sp,
                        //         style: BorderStyle.solid),
                        //   ),
                        //   child: Padding(
                        //     padding: EdgeInsets.only(
                        //         left: 10.sp, right: 10.sp, top: 10.sp),
                        //     child: Column(
                        //       children: [
                        //         Row(children: [
                        //           Icon(
                        //             !isFavourite
                        //                 ? Icons.favorite_border_sharp
                        //                 : Icons.favorite,
                        //             color:
                        //                 !isFavourite ? Colors.grey : Colors.red,
                        //             size: 20.sp,
                        //           ),
                        //           Spacer(),
                        //           Image.asset("assets/images/star.png"),
                        //           SizedBox(
                        //             width: 5.sp,
                        //           ),
                        //           Text(
                        //             "3.0",
                        //             style: TextStyle(
                        //                 fontFamily:
                        //                     DoctorHuntAssetsPath.doctorHuntFont,
                        //                 fontSize: 14.sp,
                        //                 fontWeight: FontWeight.w700,
                        //                 color: blackText),
                        //           ),
                        //         ]),
                        //         SizedBox(
                        //           height: 2.sp,
                        //         ),
                        //         Container(
                        //             height: 54.sp,
                        //             width: 54.sp,
                        //             child: Image.asset(
                        //                 "assets/images/strain.png")),
                        //         SizedBox(
                        //           height: 10.sp,
                        //         ),
                        //         Text(
                        //           "Dr. Strain",
                        //           style: TextStyle(
                        //             fontSize: 12.sp,
                        //             fontWeight: FontWeight.w700,
                        //             fontFamily:
                        //                 DoctorHuntAssetsPath.doctorHuntFont,
                        //             color: blackText,
                        //           ),
                        //         ),
                        //         SizedBox(
                        //           height: 5.sp,
                        //         ),
                        //         RichText(
                        //           text: TextSpan(children: [
                        //             TextSpan(
                        //               text: "\$ ",
                        //               style: TextStyle(
                        //                 fontSize: 11.sp,
                        //                 fontWeight: FontWeight.w500,
                        //                 fontFamily:
                        //                     DoctorHuntAssetsPath.doctorHuntFont,
                        //                 color: greenTeal,
                        //               ),
                        //             ),
                        //             TextSpan(
                        //               text: "22.00/ hours",
                        //               style: TextStyle(
                        //                 fontSize: 11.sp,
                        //                 fontWeight: FontWeight.w300,
                        //                 fontFamily:
                        //                     DoctorHuntAssetsPath.doctorHuntFont,
                        //                 color: royalIntrigue,
                        //               ),
                        //             ),
                        //           ]),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        LastRowContainer(isFavourite: isFavourite = true, starTextPath: "3.0", doctorsNamePath: "Dr. Strain", hourPath: "22.00/ hours", doctorImagePath: "assets/images/strain.png",),
                        SizedBox(
                          width: 5.sp,
                        ),

                        // Third Container
                        // Container(
                        //   height: 135.sp,
                        //   width: 106.sp,
                        //   decoration: BoxDecoration(
                        //     color: whiteText,
                        //     borderRadius: BorderRadius.circular(6.r),
                        //     border: Border.all(
                        //         color: whiteText,
                        //         width: 1.0.sp,
                        //         style: BorderStyle.solid),
                        //   ),
                        //   child: Padding(
                        //     padding: EdgeInsets.only(
                        //         left: 10.sp, right: 10.sp, top: 10.sp),
                        //     child: Column(
                        //       children: [
                        //         Row(children: [
                        //           Icon(
                        //             !isFavourite
                        //                 ? Icons.favorite_border_sharp
                        //                 : Icons.favorite,
                        //             color:
                        //                 !isFavourite ? Colors.grey : Colors.red,
                        //             size: 20.sp,
                        //           ),
                        //           Spacer(),
                        //           Image.asset("assets/images/star.png"),
                        //           SizedBox(
                        //             width: 5.sp,
                        //           ),
                        //           Text(
                        //             "2.9",
                        //             style: TextStyle(
                        //                 fontFamily:
                        //                     DoctorHuntAssetsPath.doctorHuntFont,
                        //                 fontSize: 14.sp,
                        //                 fontWeight: FontWeight.w700,
                        //                 color: blackText),
                        //           ),
                        //         ]),
                        //         SizedBox(
                        //           height: 2.sp,
                        //         ),
                        //         Container(
                        //             height: 54.sp,
                        //             width: 54.sp,
                        //             child: Image.asset(
                        //                 "assets/images/lachinet.png")),
                        //         SizedBox(
                        //           height: 10.sp,
                        //         ),
                        //         Text(
                        //           "Dr. Lachinet",
                        //           style: TextStyle(
                        //             fontSize: 12.sp,
                        //             fontWeight: FontWeight.w700,
                        //             fontFamily:
                        //                 DoctorHuntAssetsPath.doctorHuntFont,
                        //             color: blackText,
                        //           ),
                        //         ),
                        //         SizedBox(
                        //           height: 5.sp,
                        //         ),
                        //         RichText(
                        //           text: TextSpan(children: [
                        //             TextSpan(
                        //               text: "\$ ",
                        //               style: TextStyle(
                        //                 fontSize: 11.sp,
                        //                 fontWeight: FontWeight.w500,
                        //                 fontFamily:
                        //                     DoctorHuntAssetsPath.doctorHuntFont,
                        //                 color: greenTeal,
                        //               ),
                        //             ),
                        //             TextSpan(
                        //               text: "29.00/ hours",
                        //               style: TextStyle(
                        //                 fontSize: 11.sp,
                        //                 fontWeight: FontWeight.w300,
                        //                 fontFamily:
                        //                     DoctorHuntAssetsPath.doctorHuntFont,
                        //                 color: royalIntrigue,
                        //               ),
                        //             ),
                        //           ]),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        LastRowContainer(isFavourite: isFavourite, starTextPath: "2.9", doctorsNamePath: "Dr. Lachinet", hourPath: "29.00/ hours", doctorImagePath: "assets/images/lachinet.png",),
                        SizedBox(
                          width: 5.sp,
                        ),

                        // Fourth Container
                        // Container(
                        //   height: 135.sp,
                        //   width: 106.sp,
                        //   decoration: BoxDecoration(
                        //     color: whiteText,
                        //     borderRadius: BorderRadius.circular(6.r),
                        //     border: Border.all(
                        //         color: whiteText,
                        //         width: 1.0.sp,
                        //         style: BorderStyle.solid),
                        //   ),
                        //   child: Padding(
                        //     padding: EdgeInsets.only(
                        //         left: 10.sp, right: 10.sp, top: 10.sp),
                        //     child: Column(
                        //       children: [
                        //         Row(children: [
                        //           Icon(
                        //             !isFavourite
                        //                 ? Icons.favorite_border_sharp
                        //                 : Icons.favorite,
                        //             color:
                        //                 !isFavourite ? Colors.grey : Colors.red,
                        //             size: 20.sp,
                        //           ),
                        //           Spacer(),
                        //           Image.asset("assets/images/star.png"),
                        //           SizedBox(
                        //             width: 5.sp,
                        //           ),
                        //           Text(
                        //             "3.0",
                        //             style: TextStyle(
                        //                 fontFamily:
                        //                     DoctorHuntAssetsPath.doctorHuntFont,
                        //                 fontSize: 14.sp,
                        //                 fontWeight: FontWeight.w700,
                        //                 color: blackText),
                        //           ),
                        //         ]),
                        //         SizedBox(
                        //           height: 2.sp,
                        //         ),
                        //         Container(
                        //             height: 54.sp,
                        //             width: 54.sp,
                        //             child: Image.asset(
                        //                 "assets/images/shouey.png")),
                        //         SizedBox(
                        //           height: 10.sp,
                        //         ),
                        //         Text(
                        //           "Dr. Crick",
                        //           style: TextStyle(
                        //             fontSize: 12.sp,
                        //             fontWeight: FontWeight.w700,
                        //             fontFamily:
                        //                 DoctorHuntAssetsPath.doctorHuntFont,
                        //             color: blackText,
                        //           ),
                        //         ),
                        //         SizedBox(
                        //           height: 5.sp,
                        //         ),
                        //         RichText(
                        //           text: TextSpan(children: [
                        //             TextSpan(
                        //               text: "\$ ",
                        //               style: TextStyle(
                        //                 fontSize: 11.sp,
                        //                 fontWeight: FontWeight.w500,
                        //                 fontFamily:
                        //                     DoctorHuntAssetsPath.doctorHuntFont,
                        //                 color: greenTeal,
                        //               ),
                        //             ),
                        //             TextSpan(
                        //               text: "25.00/ hours",
                        //               style: TextStyle(
                        //                 fontSize: 11.sp,
                        //                 fontWeight: FontWeight.w300,
                        //                 fontFamily:
                        //                     DoctorHuntAssetsPath.doctorHuntFont,
                        //                 color: royalIntrigue,
                        //               ),
                        //             ),
                        //           ]),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        LastRowContainer(isFavourite: isFavourite, starTextPath: "3.0", doctorsNamePath: "Dr. Crick", hourPath: "25.00/ hours", doctorImagePath: "assets/images/shouey.png",),
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
    required this.isFavourite,
    required this.starTextPath,
    required this.doctorsNamePath,
    required this.hourPath,
    required this.doctorImagePath,
  });

  final bool isFavourite;
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
                !isFavourite
                    ? Icons.favorite_border_sharp
                    : Icons.favorite,
                color:
                    !isFavourite ? Colors.grey : Colors.red,
                size: 20.sp,
              ),
              Spacer(),
              Image.asset("assets/images/star.png"),
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
                  text: "\$ ",
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
