
import 'package:dyslexia_app/core/utils/app_assets.dart';
import 'package:dyslexia_app/core/utils/app_colors.dart';
import 'package:dyslexia_app/core/widget/custom_button.dart';
import 'package:dyslexia_app/core/widget/question_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 330.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Image.asset(
                    AppAssets.qusImage,
                    width: 330.w,
                  ),
                ),

                Text(
                  'What letter does the word "Apple" start with in the image?',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme.displayMedium!
                      .copyWith(color: AppColors.black,
                      fontSize: 25.sp
                    //fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(
                  height: 25.h,
                ),

                QuestionButton(
                  background: const Color(0xff30B0C7),
                  onPressed: (){

                  },
                  text: 'Y',
                ),

                SizedBox(
                  height: 15.h,
                ),

                QuestionButton(
                  background: const Color(0xffE35454),
                  onPressed: (){

                  },
                  text: 'X',
                ),

                SizedBox(
                  height: 15.h,
                ),

                QuestionButton(
                  background: const Color(0xffFF9500),
                  onPressed: (){

                  },
                  text: 'X',
                ),

                SizedBox(
                  height: 60.h,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(
                      width: 120.w,
                      onPressed: () {

                      },
                      text: 'Back',
                    ),


                    CustomButton(
                      width: 120.w,
                      onPressed: () {

                      },
                      text: 'Next',
                    ),


                  ],
                )


              ],
            ),
          ),
        ),
      ),
    );
  }
}
