import 'package:cardealership/app/data/car_model.dart';
import 'package:cardealership/app/data/my_var.dart';
import 'package:cardealership/app/theme/my_themes.dart';
import 'package:cardealership/app/theme/theme_manager.dart';
import 'package:cardealership/app/widgets/my_custom_widget.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({super.key, required this.carId});
  final carId;

  @override
  Widget build(BuildContext context) {
    final theCar = cars.where((element) => element.id == carId).toList();
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeManager.instance.getMode(),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Car Details",
            style: bodyLarge,
          ),
          centerTitle: true,
        ),
        body: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                verticalSpace(30),
                Image.asset(theCar[0].image),
                verticalSpace(50),
                buildCardTitle(theCar[0].title),
                verticalSpace(50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildCardPrice(theCar[0].price.toString()),
                    buildCardPrice(theCar[0].rentPrice.toString()),
                  ],
                ),
                verticalSpace(50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [buildCardButton("Buy"), buildCardButton("Rent")],
                )
              ],
            )),
      ),
    );
  }
}
