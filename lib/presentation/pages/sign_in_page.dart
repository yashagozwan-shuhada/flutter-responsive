import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_responsive/core/constants/image_asset_path.dart';
import 'package:flutter_responsive/core/translation/index.dart';
import 'package:sizer/sizer.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    const sizeScreen = 402;
    final currentScreen = MediaQuery.of(context).size.width;
    final finalPadding = (currentScreen / sizeScreen) * 16;

    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 4.h),
          Image.asset(
            ImageAssetPath.logo,
            width: 10.w,
            height: 10.w,
          ),
          SizedBox(height: 1.h),
          Text(
            'NFT Arista',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.sp,
            ),
          ),
          SizedBox(height: 14.h),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: finalPadding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'NFT Arista',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                  ),
                ),
                SizedBox(height: 1.2.h),
                Text(
                  'Please fill your detail to access your account.',
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 3.h),
                _buildTextField('Email', 'debra.holt@example.com'),
                SizedBox(height: 3.h),
                _buildTextField('Password', 'Enter your password'),
                SizedBox(height: 3.h),
                Row(
                  children: [
                    Expanded(
                      child: CheckboxListTile(
                        splashRadius: 16.sp,
                        contentPadding: EdgeInsets.zero,
                        controlAffinity: ListTileControlAffinity.leading,
                        value: true,
                        onChanged: (e) {},
                        title: Text(
                          'Remember me',
                          style: TextStyle(
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle: TextStyle(
                          fontSize: 16.sp,
                        ),
                      ),
                      onPressed: () {},
                      child: Text(LocaleKeys.forgotPassword.tr()),
                    ),
                  ],
                ),
                SizedBox(height: 1.5.h),
                FilledButton(
                  style: FilledButton.styleFrom(
                    textStyle: TextStyle(fontSize: 16.sp),
                    padding: EdgeInsets.all(16.sp),
                  ),
                  onPressed: () {},
                  child: Text(LocaleKeys.signIn.tr()),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(
    String label,
    String hint,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 16.sp,
          ),
        ),
        SizedBox(height: 0.5.h),
        TextField(
          style: TextStyle(fontSize: 16.sp),
          decoration: InputDecoration(
            hintText: hint,
            contentPadding: EdgeInsets.all(16.sp),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.sp),
            ),
            suffixIcon: IconButton(
              style: IconButton.styleFrom(
                iconSize: 20.sp,
                padding: EdgeInsets.all(0.sp),
              ),
              onPressed: () {},
              icon: const Icon(Icons.cancel),
            ),
          ),
        ),
      ],
    );
  }
}
