//Colors

import 'package:cardealership/app/data/brands_model.dart';
import 'package:cardealership/app/widgets/my_custom_widget.dart';
import 'package:flutter/material.dart';

// my fonts
String primaryFontFamily = "Lumanosimo";

//styles
TextStyle bodyLarge =
    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold);
TextStyle bodyMedium =
    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
TextStyle bodySmall =
    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold);

//colors
const Color whiteColor = Colors.white;
const Color redColor = Colors.red;
const Color primaryDark = Colors.deepPurple;
const Color aceentDark = Colors.deepPurpleAccent;
const Color primaryLight = Colors.deepOrange;
const Color aceentLight = Colors.deepOrangeAccent;
const Color backgroundDark = Color.fromARGB(255, 48, 48, 48);
Color cardColor = const Color.fromARGB(255, 0, 0, 0);
//Screen

double screenWidth = double.infinity;
double screenHeight = double.infinity;

// my Drawer

getDrawer(BuildContext context) {
  return Drawer(
    width: 250,
    child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(100),
            InkWell(
              onTap: () => Navigator.pushReplacementNamed(context, "home"),
              child: const Text("Home"),
            ),
            const SizedBox(
                child: Divider(
              thickness: 1,
            )),
            verticalSpace(7),
            const InkWell(
              child: Text("Sale Car"),
            ),
            const SizedBox(
                child: Divider(
              thickness: 1,
            )),
            verticalSpace(7),
            const InkWell(
              child: Text("Design Car"),
            ),
            const SizedBox(
                child: Divider(
              thickness: 1,
            )),
            verticalSpace(7),
            InkWell(
              onTap: () =>
                  Navigator.pushReplacementNamed(context, "spareParts"),
              child: const Text("Spare Parts"),
            ),
            const SizedBox(
                child: Divider(
              thickness: 1,
            )),
            verticalSpace(7),
            InkWell(
              onTap: () => Navigator.pushReplacementNamed(context, "favorite"),
              child: const Text("Favorite"),
            ),
            const SizedBox(
                child: Divider(
              thickness: 1,
            )),
            verticalSpace(7),
            const InkWell(
              child: Text("Chat us"),
            )
          ],
        )),
  );
}

// searchBar
buildSearchBar() {
  return Padding(
    padding: const EdgeInsets.only(right: 30),
    child: TextField(
      decoration: InputDecoration(
          hintText: "Search",
          hintStyle: const TextStyle(color: whiteColor),
          border: InputBorder.none,
          fillColor: cardColor,
          filled: true),
    ),
  );
}

// Cars models
bulidCarsModels() {
  return Container(
    width: screenWidth,
    height: 100,
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: cardColor,
      borderRadius: BorderRadius.circular(20),
    ),
    child: ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (context, index) => horizontalSpace(10),
      itemCount: brands.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            //write here the on click logic
          },
          child: Image.asset(
            brands[index].image,
          ),
        );
      },
    ),
  );
}

//
// ignore: non_constant_identifier_names

buildCardButton(String text) {
  return SizedBox(
    width: 150,
    height: 50,
    child: ElevatedButton(
      onPressed: () {},
      child: Text(
        text,
        style: bodySmall,
      ),
    ),
  );
}

buildCardTitle(String title) {
  return Text(
    title,
    style: bodyLarge,
  );
}

buildCardPrice(String price) {
  return Text("\$ $price", style: bodyMedium);
}
