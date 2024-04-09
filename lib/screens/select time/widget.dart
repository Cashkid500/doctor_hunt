import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShrutiKediaContainer extends StatelessWidget {
  const ShrutiKediaContainer({
    super.key,
    required this.isFavorite,
  });

  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 98.sp,
      width: 335.sp,
      decoration: BoxDecoration(
        color: whiteText,
        borderRadius: BorderRadius.circular(8.sp),
        border:
            Border.all(color: whiteText, width: 1.sp, style: BorderStyle.solid),
      ),
      child: Padding(
        padding: EdgeInsets.only(
            left: 10.sp, right: 6.sp, top: 10.sp, bottom: 10.sp),
        child: Row(children: [
          Image.asset(DoctorHuntAssetsPath.tranquilli),
          SizedBox(
            width: 8.sp,
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.sp),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  //***************** Shruti Kedia *****************
                  Text(
                    DoctorHuntText.shruti,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                      color: blackText,
                    ),
                  ),
                  SizedBox(
                    width: 75.sp,
                  ),
                  Icon(
                    !isFavorite ? Icons.favorite_border_sharp : Icons.favorite,
                    color: !isFavorite ? Colors.grey : Colors.red,
                    size: 20.sp,
                  ),
                ],
              ),

              SizedBox(
                height: 5.sp,
              ),

              // ***************** Upasana *****************
              Text(
                DoctorHuntText.upasana,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                  color: royalIntrigue,
                ),
              ),

              SizedBox(
                height: 5.sp,
              ),

              //***************** Rating *****************
              Image.asset(DoctorHuntAssetsPath.rating)
            ]),
          ),
        ]),
      ),
    );
  }
}
