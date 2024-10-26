import 'package:cardealership/app/data/car_model.dart';
import 'package:cardealership/app/data/my_var.dart';
import 'package:cardealership/app/pages/details.dart';
import 'package:cardealership/app/theme/my_themes.dart';
import 'package:cardealership/app/theme/theme_manager.dart';
import 'package:cardealership/app/widgets/my_custom_widget.dart';
import 'package:flutter/material.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    ThemeManager.instance.addListener(() {
      setThemeManager();
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();

    ThemeManager.instance.removeListener(() {
      setThemeManager();
    });
  }

  setThemeManager() {
    if (true) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeManager.instance.getMode(),
      home: Scaffold(
        appBar: AppBar(
          actions: [
            Switch(
              value: ThemeManager.instance.getMode() == ThemeMode.dark,
              onChanged: (isDark) {
                ThemeManager.instance.toggleTheme(isDark);
              },
            )
          ],
          title: Text(
            "Home",
            style: bodyLarge,
          ),
          centerTitle: true,
        ),
        drawer: getDrawer(context),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(20),
              buildSearchBar(),
              verticalSpace(15),
              Text("TOP Brands", style: bodyLarge),
              verticalSpace(10),
              bulidCarsModels(),
              verticalSpace(20),
              Expanded(
                child: ListView.separated(
                  itemCount: cars.length,
                  separatorBuilder: (context, index) => verticalSpace(20),
                  itemBuilder: (context, index) {
                    var item = cars[index];
                    return Container(
                      padding: const EdgeInsets.all(12),
                      width: screenWidth,
                      decoration: BoxDecoration(
                        color: cardColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
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
                              Text(
                                item.title,
                                style: bodyMedium,
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    item.favorite = !item.favorite;
                                  });
                                },
                                icon: Icon(
                                  item.favorite
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color: const Color.fromARGB(255, 128, 24, 24),
                                ),
                              )
                            ],
                          ),
                          verticalSpace(10),
                          Container(
                            width: screenWidth,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Details(
                                      carId: cars[index].id,
                                    ),
                                  ),
                                );
                              },
                              child: Image.asset(
                                item.image,
                                fit: BoxFit.fill,
                                width: screenWidth,
                                height: 200,
                              ),
                            ),
                          ),
                          verticalSpace(10),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    buildCardPrice(item.price.toString()),
                                    verticalSpace(5),
                                    buildCardButton("Buy")
                                  ],
                                ),
                              ),
                              Expanded(
                                  child: Column(
                                children: [
                                  buildCardPrice(item.rentPrice.toString()),
                                  buildCardButton("Rent")
                                ],
                              )),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
