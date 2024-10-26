import 'package:cardealership/app/data/my_var.dart';
import 'package:cardealership/app/data/spare_part_data.dart';
import 'package:cardealership/app/theme/my_themes.dart';
import 'package:cardealership/app/theme/theme_manager.dart';

import 'package:cardealership/app/widgets/my_custom_widget.dart';
import 'package:flutter/material.dart';

class SpareParts extends StatefulWidget {
  const SpareParts({super.key});

  @override
  State<SpareParts> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SpareParts> {
  @override
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
              "Spare Parts",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            centerTitle: true,
          ),
          drawer: getDrawer(context),
          body: Padding(
              padding: const EdgeInsets.all(0),
              child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      verticalSpace(20),
                      buildSearchBar(),
                      verticalSpace(20),
                      Expanded(
                        child: ListView.separated(
                          itemCount: sparePartsItems.length,
                          separatorBuilder: (context, index) =>
                              verticalSpace(20),
                          itemBuilder: (context, index) {
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      buildCardTitle(
                                          sparePartsItems[index].title)
                                    ],
                                  ),
                                  verticalSpace(20),
                                  Container(
                                    width: 270,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: InkWell(
                                      child: Image.asset(
                                        sparePartsItems[index].image,
                                        fit: BoxFit.fill,
                                        width: 20,
                                      ),
                                    ),
                                  ),
                                  verticalSpace(10),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          children: [
                                            buildCardPrice(
                                                sparePartsItems[index].price),
                                            verticalSpace(5),
                                            buildCardButton("Buy")
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  )))),
    );
  }
}
