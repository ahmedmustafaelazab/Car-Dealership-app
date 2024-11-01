import 'package:cardealership/app/data/my_var.dart';
import 'package:cardealership/app/widgets/my_custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/app_progress_button.dart';
import '../widgets/custom_text_form.dart';
import '../widgets/social_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "assets/images/pexels-kamshotthat-3457780.jpg",
            ),
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(30),
                Row(
                  children: [
                    Text("CAR ZONE",
                        style: Theme.of(context).textTheme.bodyLarge),
                    horizontalSpace(12),
                    const Icon(
                      FontAwesomeIcons.hand,
                      color: Colors.yellow,
                    )
                  ],
                ),
                verticalSpace(50),
                Text("LOGIN", style: Theme.of(context).textTheme.bodyLarge),
                verticalSpace(50),
                const CustomTextFormField(
                  hintText: "Email",
                  keyboardType: TextInputType.emailAddress,
                  fillColor: Colors.grey,
                  borderColor: whiteColor,
                  hintColor: whiteColor,
                  prefixIcon: Icons.email,
                  radius: 30,
                  prefixIconColor: whiteColor,
                ),
                verticalSpace(30),
                const CustomTextFormField(
                  hintText: "Password",
                  keyboardType: TextInputType.visiblePassword,
                  fillColor: Colors.grey,
                  borderColor: whiteColor,
                  hintColor: whiteColor,
                  isPassword: true,
                  radius: 30,
                  suffixIconColor: whiteColor,
                  prefixIcon: Icons.password,
                  prefixIconColor: whiteColor,
                ),
                verticalSpace(30),
                Center(
                  child: AppProgressButton(
                    width: screenWidth,
                    isBordered: true,
                    backgroundColor: Colors.grey,
                    height: 55,
                    text: "LOGIN",
                    fontSize: 18,
                    radius: 30,
                    onPressed: (animationController) {
                      animationController.forward();
                      Future.delayed(
                        const Duration(seconds: 1),
                        () {
                          animationController.reverse();
                          Navigator.pushReplacementNamed(context, "home");
                        },
                      );
                    },
                  ),
                ),
                verticalSpace(30),
                const Center(
                  child: Text(
                    "------ Or -------",
                    style: TextStyle(
                      color: whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                verticalSpace(20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SocialButton(
                      backGroundColor: whiteColor,
                      icon: FontAwesomeIcons.facebook,
                      iconColor: Colors.blue,
                    ),
                    SocialButton(
                      backGroundColor: whiteColor,
                      icon: FontAwesomeIcons.google,
                      iconColor: Colors.red,
                    ),
                    SocialButton(
                      backGroundColor: whiteColor,
                      icon: FontAwesomeIcons.twitter,
                      iconColor: Colors.blue,
                    ),
                    SocialButton(
                      backGroundColor: whiteColor,
                      icon: FontAwesomeIcons.tiktok,
                    )
                  ],
                ),
                verticalSpace(20),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, "register");
                  },
                  child: const Center(
                    child: Text(
                      "Don' thave an account? Signup",
                      style: TextStyle(
                        color: Color.fromARGB(255, 237, 6, 6),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
