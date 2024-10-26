import 'package:cardealership/app/data/car_model.dart';
import 'package:cardealership/app/data/my_var.dart';
import 'package:cardealership/app/theme/my_themes.dart';
import 'package:cardealership/app/theme/theme_manager.dart';
import 'package:cardealership/app/widgets/my_custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// ignore: must_be_immutable
class Favorite extends StatelessWidget {
  Favorite({super.key});

  final favoriteCar =
      cars.where((element) => element.favorite == true).toList();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeManager.instance.getMode(),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Favorite",
            style: bodyLarge,
          ),
          centerTitle: true,
        ),
        drawer: getDrawer(context),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView.separated(
              itemBuilder: (context, index) => verticalSpace(20),
              separatorBuilder: (context, index) {
                return Container(
                  color: cardColor,
                  height: 320,
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RatingBar.builder(
                            initialRating: 3,
                            minRating: 1,
                            itemSize: 15,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {},
                          ),
                          const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        ],
                      ),
                      verticalSpace(10),
                      Image.asset(
                        favoriteCar[index].image,
                        fit: BoxFit.fill,
                        width: screenWidth,
                        height: 200,
                      ),
                      verticalSpace(10),
                      buildCardTitle(favoriteCar[index].title)
                    ],
                  ),
                );
              },
              itemCount: favoriteCar.length),
        ),
      ),
    );
  }
}
