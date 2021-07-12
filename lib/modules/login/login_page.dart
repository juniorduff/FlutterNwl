import 'package:flutter/material.dart';
import 'package:nwl/shared/themes/app_color.dart';
import 'package:nwl/shared/themes/app_images.dart';
import 'package:nwl/shared/themes/app_text_style.dart';
import 'package:nwl/widgets/social_login/social_login_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.36,
              color: AppColors.primary,
            ),
            Positioned(
                top: 40,
                right: 0,
                left: 10,
                child: Image.asset(
                  AppImages.person,
                  width: 208,
                  height: 300,
                )),
            Positioned(
              bottom: size.height * 0.08,
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AppImages.logoMini),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 70, top: 20, right: 70),
                    child: Text(
                      "Organize seu boletos em um só lugar",
                      style: TextStyles.titleHome,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 70, top: 40, right: 70),
                    child: SocialLoginButton(onTap: () {
                      print("clicou");
                    }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
